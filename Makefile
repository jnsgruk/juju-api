.PHONY: help
help:
	@echo "Usage:"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: serve
serve: generate
## serve: Build the sites and serve them locally on port 4567 using Docker.
	docker run \
		--rm \
		-v ${CURDIR}/build:/srv/slate/build \
		-v ${CURDIR}/site:/srv/slate/source \
		-p4567:4567 \
		slatedocs/slate \
		serve

.PHONY: generate
generate: generate-spec generate-converted-spec
## generate: Generate the Markdown file for both the new and old Juju API specs.

.PHONY: lint
lint:
## lint: Lint the OpenAPI spec with Spectral
	npx @stoplight/spectral-cli lint ${CURDIR}/openapi.yaml
	npx prettier --check .

.PHONY: format
format:
## format: Formats both Markdown documents and YAML documents to preferred repository style.
	npx prettier --write .
	yq -i 'sort_keys(.components.schemas)' openapi.yaml
	yq -i 'sort_keys(.components.responses)' openapi.yaml
	yq -i 'sort_keys(.components.parameters)' openapi.yaml
	yq -i 'sort_keys(.components.paths)' openapi.yaml

.PHONY: build
build: generate
## build: Build the sites using Docker.
	docker run \
		--rm \
		-v ${CURDIR}/build:/srv/slate/build \
		-v ${CURDIR}/site:/srv/slate/source \
		slatedocs/slate \
		build

.PHONY: generate-spec
generate-spec: 
	npx widdershins \
		-e ${CURDIR}/.widdershins.yaml \
		${CURDIR}/openapi.yaml \
		-o ${CURDIR}/site/index.html.md

.PHONY: generate-converted-spec
generate-converted-spec: 
	npx widdershins \
		-e ${CURDIR}/.widdershins.yaml \
		${CURDIR}/schemas/generated.yaml \
		-o ${CURDIR}/site/generated.html.md
