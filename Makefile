.DEFAULT_GOAL := init

init:
	chmod +x ./.github/script/init.sh && sh ./.github/script/init.sh

clean:
	rm -r apps volume

p:
	sudo chown -R 33:33 apps/theme volume/ && sudo chmod -R 775 apps/theme volume/

php_env:
	sh ./.github/script/php_env.sh
