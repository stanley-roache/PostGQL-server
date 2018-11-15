# Docker-PostgreSQL-Postgraphile
This is copied from a tutorial to build a **GraphQL API** using **Docker**, **PostgreSQL** and **Postgraphile**.

See [Github Wiki](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki).

# Requirements
* [Docker Community Edition](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/)
  - If you are using Windows or Mac, docker-compose was likely installed when you setup Docker. To check this run `docker-compose -v` in your command line

# How To

## Setup the server for the first time.
Clone the project.
Make sure you are in the root folder of the project
```shell
cd PostGQL-server
```
Next we setup the database:
```shell
docker-compose run postgres 
```

You should see rapidfire SQL log output; GRANT, CREATE etc. After the terminal has settled down the database is up and running, exit out with Ctrl+C

Run the database and server together by running the command:

```shell
docker-compose up 
```
Follow the link output `http://0.0.0.0/graphiql` in the terminal to start experimenting with GraphQL queries

## Shutdown the server

Press Ctrl+C in terminal and wait to allow the server to shut down, when you have a command line prompt again run:
```shell
docker-compose down
```

The docker contianers have been shut down, any database data will persist locally so when you start the server again you keep everything

## Run the server again

```shell
cd PostGQL-server
docker-compose up
```

And you're back
