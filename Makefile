.PHONY: container_build container_shell build server clean distclean client github_client github_server loregen versiongen update

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
	cp "$(shell pwd)/.version" "$(shell pwd)/.version-container"

container_build: versiongen
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

client: container_build versiongen loregen
	rm -rf build/curseforge
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		-u "$(shell id -u):$(shell id -g)" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		build
	mkdir -p artifacts
	VERSION=$$(cat $(shell pwd)/.version) ; \
	cp build/release/ttmb-$${VERSION}.zip $(ARTIFACTS)/ttmb-client-$${VERSION}.zip

server: container_build versiongen loregen
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
	rm -rf build/server build/release .version .version-container
	rm -f src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig

distclean: clean
	rm -rf build curseforge.db packmaker.lock config.yml .venv

github_client: client
	mkdir -p artifacts/github/client
	VERSION=$$(cat $(shell pwd)/.version) ; \
	cd $(ARTIFACTS)/github/client && unzip $(ARTIFACTS)/ttmb-client-$${VERSION}.zip

github_server: server
	mkdir -p artifacts/github/server
	VERSION=$$(cat $(shell pwd)/.version) ; \
	cd $(ARTIFACTS)/github/server && unzip $(ARTIFACTS)/ttmb-server-$${VERSION}.zip

loregen: container_build
	rm -rf src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig
	cp lore/static/*.json src/config/loreexpansion/lore/
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(shell cat $(shell pwd)/.version-container) \
		loregen
