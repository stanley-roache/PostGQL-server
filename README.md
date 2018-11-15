# Docker-PostgreSQL-Postgraphile
This is copied from a really good [tutorial](https://github.com/alexisrolland/docker-postgresql-postgraphile) to build a **GraphQL API** using **Docker**, **PostgreSQL** and **Postgraphile**.

There's a wiki too - [Github Wiki](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki).

# Requirements
* [Docker Community Edition](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/)
  - If you are using Windows or Mac, docker-compose was likely installed when you setup Docker. To check this run `docker-compose -v` in your command line. For Linux find instructions in the link

# How To

## Setup the server for the first time.
Clone the project.
Make sure you are in the root folder of the project
```shell
cd PostGQL-server
```
Next we setup the database:
```shell
docker-compose up postgres 
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

The docker contianers have been shut down, any database contents will persist locally so when you start the server again you keep everything

## Run the server again

```shell
cd PostGQL-server
docker-compose up
```

And you're back

## Run the database and server separately

You can if you want run the postgres container and postgraphile container in seperate terminal windows. First in one window run

```shell
cd PostGQL-server
docker-compose up postgres
```

Wait until this terminal says something like 'database is ready to accept connections'. Open a new terminal window (in the same folder) and run

```shell
docker-compose up postgraphile
```
