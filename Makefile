serve:
	docker-compose -f docker/docker-compose.dev.yml up

build:
	docker-compose -f docker/docker-compose.dev.yml build

build_prod:
	docker-compose -f docker/docker-compose.prod.yml build
