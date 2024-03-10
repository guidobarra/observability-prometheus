
SHELL=/bin/bash

docker_deploy_elastic:
	docker compose --env-file ./docker/elasticsearch.env  -f docker/elasticsearch.yml --project-directory ./docker up -d

docker_stop_elastic:
	docker compose --env-file ./docker/elasticsearch.env  -f docker/elasticsearch.yml --project-directory ./docker down

docker_deploy_elastic_without_credentials:
	docker compose --env-file ./docker/elasticsearch.env  -f docker/elastic-without-pass.yml --project-directory ./docker up -d

docker_stop_elastic_without_credentials:
	docker compose --env-file ./docker/elasticsearch.env  -f docker/elastic-without-pass.yml --project-directory ./docker down
