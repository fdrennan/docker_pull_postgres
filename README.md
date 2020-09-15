# docker_pull_postgres

Part of NDEXR


Connections for Postgres: [ndexpg](https://github.com/fdrennan/ndexpg)

# Start The Database

```
docker-compose up -d
```


To stop postgres, run 
```
docker-compose down
```

.env
```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=docker
POSTGRES_DB=postgres
```