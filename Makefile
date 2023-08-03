init:
	@read -p "Enter the version (e.g., v1, v2, v3): " VERSION; \
	mkdir -p volume/$$VERSION/db; \
	mkdir -p volume/$$VERSION/wp; \
	mkdir -p app/$$VERSION

clean:
	rm -r app volume

dev\:up:
	docker-compose up -d

dev\:down:
	docker-compose down

prod\:up:
	docker-compose -f docker-compose.yaml -f docker-compose.override.yaml -f docker-compose.prod.yaml up -d

prod\:down:
	docker-compose -f docker-compose.yaml -f docker-compose.override.yaml -f docker-compose.prod.yaml down

p:
	sudo chown -R 33:33 apps/theme .docker/wp/wp-content && sudo chmod -R 775 apps/theme .docker/wp/wp-content
