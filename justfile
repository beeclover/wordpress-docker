# 사용자 정의 도움말
help:
    @just --list

# 초기화 작업을 수행합니다.
init:
	chmod +x ./scripts/init.sh && sh ./scripts/init.sh

# 생성된 파일 및 디렉터리를 삭제합니다.
clean:
	rm -r apps volume .env

# 파일 및 디렉터리의 소유권과 권한을 변경합니다.
p:
	sudo chown -R 33:33 apps/theme volume/ && sudo chmod -R 775 apps/theme volume/

# PHP 환경 설정 스크립트를 실행합니다.
php_env:
	sh ./scripts/php_env.sh
