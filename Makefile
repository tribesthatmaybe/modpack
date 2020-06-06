.PHONY: container_build container_shell build server clean distclean

DOCKER_IMAGE=tribesthatmaybe/modpack
VERSION=$(shell cat version)
ARTIFACTS=$(shell pwd)/artifacts

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
	mkdir -p artifacts
	cp build/release/ttmb-$(VERSION).zip $(ARTIFACTS)/ttmb-$(VERSION).zip

server: container_build
	rm -f build/server/mods/* $(ARTIFACTS)/ttmb-server-$(VERSION).zip
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		server
	mkdir -p artifacts
	cd build/server && zip -r $(ARTIFACTS)/ttmb-server-$(VERSION).zip *

clean:
	rm -rf build/server build/release

distclean: clean
	rm -rf build curseforge.db packmaker.lock config.yml
