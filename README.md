# aws-dynamodb-local Dockerfile

This repository contains **Dockerfile** of aws DynamoDB local.

See [AWS Documentation](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html) about DynamoDB local.

## Docker image

- [leonisandco/aws-dynamodb-local](https://hub.docker.com/r/leonisandco/aws-dynamodb-local/)

This docker image is created with [openjdk](https://hub.docker.com/_/openjdk/) on the [alpine linux](https://alpinelinux.org/)! :smile:

## Installation

1. Install [Docker](https://www.docker.com/)
2. Download [automated build](https://hub.docker.com/r/leonisandco/aws-dynamodb-local/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull leonisandco/aws-dynamodb-local`
  (alternatively, you can build an image from Dockerfile: `docker build -t ="leonisandco/aws-dynamodb-local" github.com/leonisandco/aws-dynamodb-local-on-docker`)

# Usage

## Run

```
# show help message
$ docker run --rm -t -i leonisandco/aws-dynamodb-local
```

```
# run temporarily with some options.
$ docker run -p 7777:7777 --rm -t -i leonisandco/aws-dynamodb-local -port 7777 -inMemory -sharedDb
```

See [AWS Documentation](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html) about how to use DynamoDB local.
