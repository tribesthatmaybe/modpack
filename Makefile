.PHONY: container_build container_shell build server clean distclean

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

build: container_build
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		build
	cp build/release/ttmb-$(VERISON).zip artifacts/ttmb-$(VERSION).zip

server: container_build
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		server
	(cd build/server && zip -c artifacts/ttmb-server-$(VERSION).zip *)

clean:
	rm -rf build/server build/release

distclean: clean
	rm -rf build curseforge.db packmaker.lock config.yml
