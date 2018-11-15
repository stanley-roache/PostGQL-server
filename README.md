# Docker-PostgreSQL-Postgraphile
Tutorial to build a **GraphQL API** using **Docker**, **PostgreSQL** and **Postgraphile**.

See [Github Wiki](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki).

# Requirements
This project has been developed on **Linux Ubuntu 18.04 LTS**. It is using the following third party components:
* [Docker Community Edition for Ubuntu](https://www.docker.com/docker-ubuntu)
* [Docker Compose](https://docs.docker.com/compose/)
* [PostgreSQL Docker image](https://hub.docker.com/_/postgres/)
* [Postgraphile Docker image](https://hub.docker.com/r/graphile/postgraphile/)

# How To
Make sure you are in the root folder of the project
```shell
cd PostGQL-server
```
Next we setup the database:
```shell
docker-compose run postgres 
```

You should see SQL log output; GRANT, CREATE etc. After the terminal has settled down the database is up and running, exit out with Ctrl+C

Run the database and server together by running the command:

```shell
docker-compose up 
```

Follow the link output in the terminal to start experimentint with GraphQL queries
