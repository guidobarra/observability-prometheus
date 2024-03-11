
SHELL=/bin/bash

docker_deploy_kafka:
	docker compose --env-file ./docker/kafka.env  -f docker/kafka-stack.yml --project-directory ./docker up -d

docker_stop_kafka:
	docker compose --env-file ./docker/kafka.env  -f docker/kafka-stack.yml --project-directory ./docker down