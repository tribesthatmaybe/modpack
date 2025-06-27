.PHONY: container_build container_shell build server clean distclean client loregen versiongen update

ARTIFACTS=$(shell pwd)/artifacts
ifndef VIRTUAL_ENV
CIENV = $(shell pwd)/.venv/bin/
else
CIENV = $(VIRTUAL_ENV)/bin/
endif


DOCKER_IMAGE="ghcr.io/tribesthatmaybe/workflow"

versiongen:
	docker run -v "$(shell pwd):/mnt" \
       otakup0pe/avakas show /mnt \
	   2> /dev/null 1> "$(shell pwd)/.version"
	cut -f 1 -d '+' < "$(shell pwd)/.version" > "$(shell pwd)/.version-container"

container_build: versiongen
	mkdir -p deps
	docker build \
		--tag $(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		.
container_shell: container_build
	docker run \
		-it --rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		shell

copy: loregen
	[ -d build/pack ] && rm -rf build/pack || true
	mkdir -p build/pack/mods
	cp -r mods/*.toml src/mods/*.jar build/pack/mods
	cp -r src/config src/customnpcs src/*.txt src/resources src/scripts src/structures build/pack

update: container_build
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		update

lock: container_build
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		lock

client: container_build versiongen copy
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		client
	mkdir -p artifacts
	VERSION=$$(cat $(shell pwd)/.version) ; \
	cp build/release/ttmb-client-$${VERSION}.zip $(ARTIFACTS)

server: container_build versiongen copy
	rm -f build/server/mods/* $(ARTIFACTS)/ttmb-server-$(VERSION).zip
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		server
	mkdir -p artifacts
	VERSION=$$(cat $(shell pwd)/.version) ; \
	cd build/server && zip -r $(ARTIFACTS)/ttmb-server-$${VERSION}.zip *

build: client server

clean:
	rm -rf build/pack build/server build/release .version .version-container
	rm -f src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig

distclean: clean
	rm -rf build curseforge.db config.yml .venv artifacts

loregen: container_build
	rm -rf src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		loregen
