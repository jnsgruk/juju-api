# Juju REST API

This repository serves to assist with a WIP design for a new RESTful Juju client API.

The existing API surface for Juju is rather large, and the aim here is to design a new client API,
and not intervene with the controller <-> controller APIs or controller <-> agent APIs.

## Getting Started

Assuming you have a working NodeJS and Python environment set up:

```shell
# Clone the repo
git clone https://github.com/jnsgruk/juju-api
cd juju-api

# Generate a naive OpenAPI spec from the Juju client facade schema
python3 tools/convert-juju-facade -i schemas/client-schemas.json -o generated.yaml

# Generate MD from the new, and the generated OpenAPI specs
npm run generate

# Serve the site(s) using Docker
npm run serve
```

You can now see the newly designed spec at https://localhost:4567/ and the generated spec at
https://localhost:4567/generated.html

## Generating Juju schema files

You can find the _client facades_ in [./schemas/client-schemas.json](./schemas/client-schemas.json).

These were generated like so:

```shell
git clone https://github.com/juju/juju
cd juju/generate/schemagen

# This will output the file client-facades.json
go run schemagen.go -admin-facades -facade-group client ./schemas/client-schemas.json
```
