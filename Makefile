.DEFAULT_GOAL := help

TYPE_APP 		= app
SERVICE_NAME 	= inventory
ENV 			= dev

PROJECT_NAME 	= ${TYPE_APP}-${SERVICE_NAME}-${ENV}

up: ## Build image for application.: make build.image
	@ docker-compose \
		-f docker/docker-compose.yml up mysql_db

run.app: ## Run image for application.: make run.app
	@docker run \
		-p 8000:${PORT_HOST} -d ${NAME_PROJECT_APP}:latest\
