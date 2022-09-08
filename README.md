<p align="center">
<a href="https://github.com/beeclover/wp-docker">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</a>
</p>


<h2 align="center">Welcome to wordpress (docker) 👋</h2>

> Wordpress Working template

## folder structure

```
.
├── .docker
│   ├── db
│   │   ├── data              // mariadb의 데이터 폴더
│   │   └── .gitkeep
│   ├── traefik
│   │   ├── acme              // traefik 인증서
│   │   │   └── .gitkeep
│   │   ├── rules             // traefik dynamic config 폴더
│   │   │   └── .gitkeep
│   │   └── traefik.yaml
│   └── wp
│       ├── wp-content        // 워드프레스 컨텐츠 폴더
│       └── .gitkeep
├── .env.example
├── .gitignore
├── Makefile
├── README.md
├── apps
│   └── theme                 // 워드프레스에서 사용할 테마 폴더
│       └── .gitkeep
├── docker-compose.local.yaml
└── docker-compose.yaml
```

## 명령어

### local (with: docker-compose.local.yaml)

로컬 개발실행

```sh
make dev:run
```

로컬 개발종료

```
make dev:down
```

### production (with: docker-compose.prod.yaml)

프로덕션 실행

```
make prod:run
```

프로덕션 종료

```
make prod:down
```

## 테마 설치 (option)

**roots/sage 설치**

```sh
cd apps/theme
rm .gitkeep
composer create-project roots/sage .
```

roots/sage에서 acorn을 사용하지만 태마 설치시에 설치되지 않기 때문에 추가 설치

```sh
composer require roots/acorn
```

**composer가 설치되지 않았을 때**

```
docker run --rm --interactive --tty \
    --volume $PWD:/app \
    --volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
    composer 명령어
```

**node_modules 설치**

```sh
yarn install
```

**테마 개발 실행**

```sh
yarn start
```

## Author

👤 **Hansanghyeon**

* Website: [hyeon.pro](https://hyeon.pro)
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)
