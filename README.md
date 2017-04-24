# Replacing Tox with Docker

Example project for creating a talk for PyCon CZ about the possibility of replacing Tox
with Docker.

## Setup

Make sure you have Docker installed. If you don't follow the directions [here](https://docs.docker.com/engine/installation/)
Make sure you have Docker Compose installed. If you don't follow the directions [here](https://docs.docker.com/compose/install/)

## Build the environment

run:

```
make build
```

## Run the tests

run:
```
make all
```

## View the test results

run:

```
make logs
```

Though this won't be any help. If you look at the `docker-compose.testing.yml` file you
can see the name of all the different services. To view the logs of a particular test run
you can run:

```
docker-compose -f docker-compose.testing.yml logs <service name>
```
