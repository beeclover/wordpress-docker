<p align="center">
<a href="https://github.com/beeclover/wp-docker">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</a>
</p>


<h2 align="center">Welcome to wp-docker 👋</h2>

> Wordpress Working template

## 테마 설치 roots/sage theme (옵션)

```sh
docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php80-composer:latest \
    composer create-project roots/sage src dev-main
```

## 테마파일의 패키지 설치

```sh
yarn install
```

```sh
docker run --rm --interactive --tty \
    --volume $PWD:/app \
    --volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
    composer install
```

### 테마파일 패키지 실행

```sh
yarn start
```

## 명령어

### 도커 실행명령어

```sh
docker-compose -f docker-compose.local.yaml up -d
```

### 도커 종료명령어

```sh
docker-compose -f docker-compose.local.yaml down
```

## Author

👤 **Hansanghyeon**

* Website: [hyeon.pro](https://hyeon.pro)
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)
