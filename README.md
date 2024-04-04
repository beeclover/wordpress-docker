<p align="center">
<a href="https://github.com/beeclover/wp-docker">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</a>
</p>

<h2 align="center">Welcome to wordpress (docker) 👋</h2>

> Wordpress Working template

- Ref [wordpress - 공식 이미지 | 도커 허브](https://hub.docker.com/_/wordpress)
- Ref [Run PHP and Composer commands via Docker – Seagyn Davis](https://www.seagyndavis.com/run-php-and-composer-commands-via-docker)

## folder structure

```
.
├── Makefile
├── README.md
├── apps
│   └── {{project_name}}  # 테마파일
├── docker-compose.override.yaml
├── docker-compose.yaml (docker-compose.prod.yaml)
└── voulme
    └── v1
        ├── db  # MySQL 데이터 저장
        └── wp  # wordpress 데이터 저장
```

## 명령어

초기설정

1. 프로젝트 이름
2. 프로덕션 개발모드

```sh
make init
```

정리하기

```sh
make clean
```
