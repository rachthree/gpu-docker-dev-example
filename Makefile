SHELL = /bin/sh

UID := $(shell id -u)
GID := $(shell id -g)

DC_DEV_VARS := UID=$(UID) GID=$(GID)

build:
	docker-compose -f docker-compose-linux.yml build \
		build-env

dev:
	$(DC_DEV_VARS) docker-compose -f docker-compose-linux.yml run \
		--service-ports \
		dev-env bash -c "cd;bash"
