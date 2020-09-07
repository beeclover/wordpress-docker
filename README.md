<p align="center">
<img src="Theme/screenshot.png" width="250px" style="border-radius: 8px">
</p>
<h2 align="center">Welcome to wp-dev-hapas 👋</h2>

> Hapas Wordpress Working template

## 사용법

`wp-dev-hapas` 는 테마, 플러그인 개발을 위해서만 제작되었습니다.
Theme는 워드프레스 최신 버전인 twentytwelve의 자식테마로 제작되었습니다.

`.wordpress`에 워드프레스 파일을 모두 싱크한 이유는 에디터에서 PHP관련해서 디버깅을 위해서

플러그인 개발시에 `docker-compose.yaml`을 수정해야합니다. `.wordpress`에 `/var/www/html`의 파일이 모두있어서 워드프레스의 기본적인 폴더들이 전부 들어있지만 플러그인 폴더를 따로 만들어서 개발하는 것을 **선호**(필수가아님)합니다.

```
# docker-compose.yaml
service:
  wordpress:
    ...
    volume: 
      - ./.wordpress:/var/www/html
      - ./{개발할 플러그인 이름}:/var/www/html/wp-content/plugins/{개발할 플러그인 이름}
      ...
...
```

위 처럼 변경하고 docker-compose를 업데이트후 진행!

그럼 이만 해피해킹


---

## Author

👤 **Hansanghyeon**

* Website: 4log.hapas.io
* Github: [@Hansanghyeon](https://github.com/Hansanghyeon)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/hapas-io/wp/issues). 

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_