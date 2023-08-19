.DEFAULT_GOAL := init

VERSION ?= v1

init:
	@read -p "Enter the version (default: $(VERSION), e.g., v1, v2, v3): " input; \
	if [ ! -z "$$input" ]; then \
		VERSION=$$input; \
	fi; \
	mkdir -p volume/$(VERSION)/db; \
	mkdir -p volume/$(VERSION)/wp; \
	mkdir -p apps/$(VERSION)

clean:
	rm -r apps volume

dev\:up:
	docker-compose up -d

dev\:down:
	docker-compose down

prod\:up:
	docker-compose -f docker-compose.yaml -f docker-compose.override.yaml -f docker-compose.prod.yaml up -d

prod\:down:
	docker-compose -f docker-compose.yaml -f docker-compose.override.yaml -f docker-compose.prod.yaml down

p:
	@read -p "Enter the version (default: $(VERSION), e.g., v1, v2, v3): " input; \
	if [ ! -z "$$input" ]; then \
		VERSION=$$input; \
	fi; \
	sudo chown -R 33:33 apps/theme volume/$(VERSION)/wp && sudo chmod -R 775 apps/theme volume/$(VERSION)/wp

php_env:
	@read -p "Enter the version (default: $(VERSION), e.g., v1, v2, v3): " input; \
	if [ ! -z "$$input" ]; then \
		VERSION=$$input; \
	fi; \
	echo "\nphp_value upload_max_filesize 512M" >> volume/$(VERSION)/wp/.htaccess; \
	echo "php_value post_max_size 512M" >> volume/$(VERSION)/wp/.htaccess; \
	echo "php_value memory_limit 256M" >> volume/$(VERSION)/wp/.htaccess; \
	echo "php_value max_execution_time 300" >> volume/$(VERSION)/wp/.htaccess; \
	echo "php_value max_input_time 300" >> volume/$(VERSION)/wp/.htaccess
