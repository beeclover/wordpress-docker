<p align="center">
<img src="Theme/screenshot.png" width="250px" style="border-radius: 8px">
</p>


<h2 align="center">Welcome to wp-docker 👋</h2>

> Wordpress Working template

## DB

DB 컨테이너를 따로 관리하는 템플릿입니다.

DB 컨테이너의 네트워크 이름은 `db_work` 컨테이너 서비스 네임은 `workdb`

## 사용법

`wp-docker` 는 테마, 플러그인 개발을 위해서만 제작되었습니다.
Theme는 워드프레스 twentynineteen 자식테마로 제작되었습니다.

`.wordpress`에 워드프레스 파일을 모두 싱크한 이유는 에디터에서 PHP관련해서 디버깅을 위해서

`.wordpress`에 `/var/www/html`의 파일이 모두있어서 워드프레스의 기본적인 폴더들이 전부 들어있습니다.

플러그인 개발에서는 `docker-compose.yaml`파일을 수정해 플러그인 폴더를 따로 만들어서 개발하는 것을 **선호**(필수가아님)합니다.

`.env` **참고**

```
WORDPRESS_DB_USER=
WORDPRESS_DB_PASSWORD=
WORDPRESS_DB_NAME=
PROJECT_NAME=
PROJECT_PORT=
```

그럼 이만 해피해킹

## Author

👤 **Hansanghyeon**

* Website: [hyeon.pro](https://hyeon.pro)
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)
