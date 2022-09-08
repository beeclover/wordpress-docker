dev\:run:
	docker-compose -f docker-compose.local.yaml up -d
dev\:down:
	docker-compose -f docker-compose.local.yaml down
prod\:run:
	docker-compose -f docker-compose.prod.yaml up -d
prod\:down:
	docker-compose -f docker-compose.prod.yaml down
p:
	sudo chown -R 33:33 apps/theme .docker/wp/wp-content && sudo chmod -R 775 apps/theme .docker/wp/wp-content
