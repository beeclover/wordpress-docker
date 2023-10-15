#!/bin/bash

DEFAULT_VERSION="v1"
PROJECT_ENV="development"

read -p "Choose an environment (d=development, p=production): " choice

if [ "$choice" = "p" ]; then
    echo "현재 환경 - 프로덕션"
    rm docker-compose.yaml
    mv docker-compose.prod.yaml docker-compose.yaml
    echo "# 프로덕션버전 \n# 참고 https://github.com/beeclover/wordpress-docker/blob/main/docker-compose.prod.yaml" | cat - docker-compose.yaml > .temp && rm docker-compose.yaml && mv .temp docker-compose.yaml
    read -p "Enter the version (default: $DEFAULT_VERSION, e.g., v1, v2, v3): " input
    if [ -z "$input" ]; then
        echo "현재 환경 - 개발"
        VERSION="$DEFAULT_VERSION"
        mkdir -p volume/"$VERSION"/db
        mkdir -p volume/"$VERSION"/wp
        mkdir -p apps/"$VERSION"
    fi
    if [ ! -z "$input" ]; then
        echo "현재 환경 - 개발"
        VERSION="$input"
        mkdir -p volume/"$VERSION"/db
        mkdir -p volume/"$VERSION"/wp
        mkdir -p apps/"$VERSION"
    fi
else
    rm docker-compose.prod.yaml
    read -p "Enter the version (default: $DEFAULT_VERSION, e.g., v1, v2, v3): " input
    # version을 입력하지 않으면 기본버전으로 설정한다.
    if [ -z "$input" ]; then
        echo "현재 환경 - 개발"
        VERSION="$DEFAULT_VERSION"
        mkdir -p volume/"$VERSION"/db
        mkdir -p volume/"$VERSION"/wp
        mkdir -p apps/"$VERSION"
    fi
    if [ ! -z "$input" ]; then
        echo "현재 환경 - 개발"
        VERSION="$input"
        mkdir -p volume/"$VERSION"/db
        mkdir -p volume/"$VERSION"/wp
        mkdir -p apps/"$VERSION"
    fi
fi
