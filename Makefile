.PHONY: help build build-local up down logs ps test
.DEFAULT_GOAL := help
DOCKER_TAG := latest
build: ## Build docker image to deploy
	docker build -t golang_todo_app:${DOCKER_TAG} --target deploy ./

build-local: ## Build docker image to local development
	docker compose build --no-cache

exec: ## Do docker exec
	docker exec -it golang_todo_app-app-1 bash

up: ## Do docker compose up with hot realod
	docker compose up -d

down: ## Do docker compose down
	docker compose down

logs: ## Do docker compose logs
	docker compose logs -f

ps: ## Check container status
	docker compose ps

test: ## Execute tests
	go test -race -shuffle=on ./...

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	 awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
