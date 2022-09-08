dev\:run:
	docker-compose -f docker-compose.local.yaml up -d
dev\:down:
	docker-compose -f docker-compose.local.yaml down
prod\:run:
	docker-compose -f docker-compose.prod.yaml up -d
prod\:down:
	docker-compose -f docker-compose.prod.yaml down