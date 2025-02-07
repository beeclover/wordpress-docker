#!/bin/bash

DEFAULT_PROJECT_NAME="wordpress"

read -p "프로젝트 환경을 선택하세요 (d=development, p=production): " choice
read -p "프로젝트 이름을 입력하세요 (default: $DEFAULT_PROJECT_NAME): " input
read -p "프로젝트 도메인을 입력하세요: " DOMAIN

# 프로젝트 이름이 입력되지 않은 경우 기본값 사용
if [ -z "$input" ]; then
    input=$DEFAULT_PROJECT_NAME
fi

echo "현재프로젝트명: ${input}"

echo "프로젝트 셋팅 시작 🛫"

# 폴더생성
mkdir -p volume/db
mkdir -p volume/wp

echo "1. 볼륨 폴더 생성"

# 환경 설정에 따른 조건 분기
if [ "$choice" = "p" ]; then
    # 프로덕션 환경 설정
    if [ -f docker-compose.prod.yml]; then
        mv docker-compose.prod.yml docker-compose.yml
    else
        echo "docker-compose.prod.yml 파일이 없습니다."
        exit 1
    fi
    echo "2. 프로덕션 환경설정 완료"
elif [ "$choice" = "d" ]; then
    # 개발 환경 설정
    mkdir -p "$input"
    if [ -f docker-compose.prod.yml ]; then
        rm docker-compose.prod.yml
    fi
    echo "2. 개발 환경설정 완료"
else
    echo "잘못된 선택입니다. 'd' 또는 'p'를 입력해주세요. ⛔️"
    exit 1
fi

echo "3. 환경변수 설정"

# WORDPRESS_PASSWORD 생성 및 설정
WORDPRESS_DB_PASSWORD=$(openssl rand -base64 48)
echo "WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}" >> .env

# 프로젝트 이름 설정
echo "PROJECT_NAME=${input}" >> .env

# .env 파일에 SERVICE 항목 추가
echo "SERVICE=\${PROJECT_NAME}" >> .env

# 도메인 입력 받기
echo "DOMAIN=${DOMAIN}" >> .env

echo "프로젝트 셋팅 완료 🛬"
