#!/bin/bash

DEFAULT_PROJECT_NAME="wordpress"

read -p "프로젝트 환경을 선택하세요 (d=development, p=production): " choice
read -p "프로젝트 이름을 입력하세요 (default: $DEFAULT_PROJECT_NAME): " input

# 프로젝트 이름이 입력되지 않은 경우 기본값 사용
if [ -z "$input" ]; then
    input=$DEFAULT_PROJECT_NAME
fi

read -p "프로젝트 도메인(${input}.demo.beeclover.pro) / 수정하시려면 입력해주세요" DOMAIN

# 모데인 이름이 입력되지 않은 경우 기본값 사용
if [ -z "$DOMAIN" ]; then
    DOMAIN="https://${input}.demo.beeclover.pro"
fi

echo "현재프로젝트명: ${input}"

echo "프로젝트 셋팅 시작 🛫"

# 환경 설정에 따른 조건 분기
if [ "$choice" = "p" ]; then
    # 프로덕션 환경 설정
    if [ -f docker-compose.prod.yml]; then
        mv docker-compose.prod.yml docker-compose.yml
    else
        echo "docker-compose.prod.yml 파일이 없습니다."
        exit 1
    fi
    echo "1. 프로덕션 환경설정 완료"
elif [ "$choice" = "d" ]; then
    # 개발 환경 설정
    mkdir -p "$input"
    if [ -f docker-compose.prod.yml ]; then
        rm docker-compose.prod.yml
    fi
    echo "1. 개발 환경설정 완료"
else
    echo "잘못된 선택입니다. 'd' 또는 'p'를 입력해주세요. ⛔️"
    exit 1
fi

echo "2. 환경변수 설정"

# 프로젝트 이름 설정
echo "PROJECT_NAME=${input}" >> .env

# .env 파일에 SERVICE 항목 추가
echo "SERVICE=\${PROJECT_NAME}" >> .env

# wordpress docker compose service 이름명시
echo "# etc" >> .env
echo "COMPOSE_PROJECT_NAME=${SERVICE}-wp" >> .env

# 도메인 입력 받기
echo "# traefik" >> .env
echo "DOMAIN=${input}.demo.beeclover.pro" >> .env
echo "APP_PORT=80" >> .env

# WORDPRESS_PASSWORD 생성 및 설정
WORDPRESS_DB_PASSWORD=$(openssl rand -base64 48)
echo "# wordpress" >> .env
echo "WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}" >> .env

echo "프로젝트 셋팅 완료 🛬"
