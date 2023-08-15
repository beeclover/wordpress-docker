<p align="center">
<a href="https://github.com/beeclover/wp-docker">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</a>
</p>


<h2 align="center">Welcome to wordpress (docker) 👋</h2>

> Wordpress Working template

- 참고
  - [wordpress - 공식 이미지 | 도커 허브](https://hub.docker.com/_/wordpress)

## folder structure

```
.
├── Makefile
├── README.md
├── apps
│   └── v1  # 테마파일
├── docker-compose.override.yaml
├── docker-compose.prod.yaml
├── docker-compose.yaml
└── voulme
    └── v1
        ├── db  # MySQL 데이터 저장
        └── wp  # wordpress 데이터 저장
```

## 명령어

### init

```sh
make init
```

clean

```sh
make clean
```

### local, demo (with: docker-compose.yaml)

로컬 개발실행

```sh
make dev:up
```

로컬 개발종료

```sh
make dev:down
```

### production (with: docker-compose.prod.yaml)

프로덕션 실행

```sh
make prod:up
```

프로덕션 종료

```sh
make prod:down
```