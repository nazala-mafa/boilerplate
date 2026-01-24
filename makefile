.SILENT:

DOCKER_COMPOSE = docker compose
DOCKER_COMPOSE_FILE = docker-compose.yml

up:
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} up -d
down: 
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} down
exec:
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} exec app bash
logs:
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} logs 
migrate:
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} exec app php artisan migrate:fresh --seed