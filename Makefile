# Production
start-docs:
	docker compose -f ./docsify/docker-compose.yml up --build

stop-docs:
	docker compose -f ./docsify/docker-compose.yml down


# Development
start-docs-dev:
	docker compose -f ./docsify/docker-compose.dev.yml up

stop-docs-dev:
	docker compose -f ./docsify/docker-compose.dev.yml down
