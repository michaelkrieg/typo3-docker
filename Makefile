SHELL := /bin/bash

help: ## this help
	@echo "Please use 'make <target>' where <target> is one of"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-32s\033[0m %s\n", $$1, $$2}'

docker-build: ## composes the Container setup
	docker-compose -f etc/docker-compose.yml up

docker-status: ## lists containers
	docker-compose -f etc/docker-compose.yml ps

