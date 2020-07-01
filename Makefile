.PHONY: container_build container_shell build server clean distclean client github_client github_server loregen

DOCKER_IMAGE=tribesthatmaybe/modpack
VERSION=$(shell docker run -v $(shell pwd):/mnt otakup0pe/avakas show /mnt --pre-build 2> /dev/null)
ARTIFACTS=$(shell pwd)/artifacts
ifndef VIRTUAL_ENV
CIENV = $(shell pwd)/.venv/bin/
else
CIENV = $(VIRTUAL_ENV)/bin/
endif

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
		shell

client: container_build loregen
	rm -rf build/curseforge/overrides
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		build
	mkdir -p artifacts
	cp build/release/ttmb-$(VERSION).zip $(ARTIFACTS)/ttmb-$(VERSION).zip

server: container_build loregen
	rm -f build/server/mods/* $(ARTIFACTS)/ttmb-server-$(VERSION).zip
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		server
	mkdir -p artifacts
	cd build/server && zip -r $(ARTIFACTS)/ttmb-server-$(VERSION).zip *

build: client server

clean:
	rm -rf build/server build/release
	rm -f src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig

distclean: clean
	rm -rf build curseforge.db packmaker.lock config.yml .venv

github_client: client
	mkdir -p artifacts/github/client
	cd $(ARTIFACTS)/github/client && unzip $(ARTIFACTS)/ttmb-$(VERSION).zip

github_server: server
	mkdir -p artifacts/github/server
	cd $(ARTIFACTS)/github/server && unzip $(ARTIFACTS)/ttmb-server-$(VERSION).zip

loregen: container_build
	rm -rf src/config/loreexpansion/lore/*.json src/structures/active/lore_*.rcig
	cp lore/static/*.json src/config/loreexpansion/lore/
	docker run \
		--rm \
		-v "$(shell pwd):/mnt" \
		$(DOCKER_IMAGE):$(VERSION) \
		loregen
