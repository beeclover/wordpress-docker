#!/bin/bash

DEFAULT_PROJECT_NAME="wordpress"

read -p "Choose an environment (d=development, p=production): " choice
read -p "Enter project name (default: $DEFAULT_PROJECT_NAME): " input

# 프로젝트 이름이 입력되지 않은 경우 기본값 사용
if [ -z "$input" ]; then
    input=$DEFAULT_PROJECT_NAME
fi

# 폴더생성
mkdir -p volume/db
mkdir -p volume/wp

# 환경 설정에 따른 조건 분기
if [ "$choice" = "p" ]; then
    # 프로덕션 환경 설정
    echo "현재 환경 - 프로덕션"
    if [ -f docker-compose.prod.yaml ]; then
        mv docker-compose.prod.yaml docker-compose.yaml
    else
        echo "docker-compose.prod.yaml 파일이 없습니다."
        exit 1
    fi
elif [ "$choice" = "d" ]; then
    # 개발 환경 설정
    mkdir -p apps/"$input"
    if [ -f docker-compose.prod.yaml ]; then
        rm docker-compose.prod.yaml
    fi
    if [ -f docker-compose.yaml ]; then
        # docker-compose.yaml 파일 내의 {{project_name}}을 사용자 입력값으로 변경
        sed -i "s/{{project_name}}/$input/g" docker-compose.yaml
    else
        echo "docker-compose.yaml 파일이 없습니다."
        exit 1
    fi
else
    echo "잘못된 선택입니다. 'd' 또는 'p'를 입력해주세요."
    exit 1
fi
