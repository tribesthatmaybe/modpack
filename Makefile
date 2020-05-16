.PHONY: container_build

DOCKER_IMAGE=tribesthatmaybe/modpack
VERSION = $(shell cat version)

container_build:
	docker build \
		--label VERSION=$(VERSION) \
		--tag $(DOCKER_IMAGE):$(VERSION) \
		.
container_shell: container_build
	docker run \
		-it --rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		bash
