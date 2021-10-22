<p align="center">
<img src="https://user-images.githubusercontent.com/42893446/138397218-3844868e-c3b6-4566-9652-b6b46d13fed8.png" width="250px" style="border-radius: 8px">
</p>


<h2 align="center">Welcome to wp-docker 👋</h2>

> Wordpress Working template

## DB

DB 컨테이너를 따로 관리하는 템플릿입니다.

DB 컨테이너의 네트워크 이름은 `db_work` 컨테이너 서비스 네임은 `workdb`


## 1. Folder set up

```sh
make setup
```

## 2. WordPress Theme

use roots/sage

```sh
docker run --rm --interactive --tty \
--volume $PWD:/app \
--volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
composer create-project roots/sage src dev-master
```

## 3. `docker-compose up -d`

`wp-content`에 `/var/www/html/wp-content`의 파일시스템에 마운트하여 관리할 필요가 있는 것을 맵핑하였습니다.

`.env` **참고**

```
WORDPRESS_DB_USER=
WORDPRESS_DB_PASSWORD=
WORDPRESS_DB_NAME=
PROJECT_NAME=
PROJECT_PORT=
```

## Author

👤 **Hansanghyeon**

* Website: [hyeon.pro](https://hyeon.pro)
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)
