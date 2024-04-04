.DEFAULT_GOAL := init

init:
	chmod +x ./scripts/init.sh && sh ./scripts/init.sh

clean:
	rm -r apps volume

p:
	sudo chown -R 33:33 apps/theme volume/ && sudo chmod -R 775 apps/theme volume/

php_env:
	sh ./scripts/php_env.sh
