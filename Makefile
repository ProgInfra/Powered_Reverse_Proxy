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


# Traefik
start-standalone:
	docker compose -f ./src/standalone/compose.yml up

stop-standalone:
	docker compose -f ./src/standalone/compose.yml down
