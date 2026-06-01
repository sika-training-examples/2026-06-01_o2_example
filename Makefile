default: up

-include Makefile.local.mk

up:
	docker compose up -d --remove-orphans

up-build:
	docker compose up -d --build --remove-orphans

down:
	docker compose down --remove-orphans

build-and-push:
	docker compose build
	docker compose push
