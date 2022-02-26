<p align="center">
<a href="https://github.com/beeclover/wp-docker">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</a>
</p>


<h2 align="center">Welcome to wp-docker 👋</h2>

> Wordpress Working template

## install

### 워드프레스 RUN

`.env.example`을 복사해서 `.env` 파일로 만들고 아래 내용을 채워준다.

```
WORDPRESS_DB_USER=
WORDPRESS_DB_PASSWORD=
WORDPRESS_DB_NAME=
PROJECT_NAME=

HOSTNAME=
```

아래 명령어를 터미널을 통해서 실행

```
docker-compose -f docker-compose.local.yaml up -d
```


### use roots/sage theme (option)

```sh
docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php80-composer:latest \
    composer create-project roots/sage src dev-main
```

```sh
yarn install
```

```sh
docker run --rm --interactive --tty \
    --volume $PWD:/app \
    --volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
    composer install
```


## Author

👤 **Hansanghyeon**

* Website: [hyeon.pro](https://hyeon.pro)
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)
