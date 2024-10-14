# inno-work-crm-cms

## /etc/host ändern

```
0.0.0.0          backend.finance-es-crm.local
```

## docker

- ohne override

```bash
docker-compose -f docker-compose.yml up --detach --build --force-recreate inno-work-backend
```

- mit override (DEV)

```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --detach --build --force-recreate inno-work-backend
```

- datenbank erzeugung

 ```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --detach --build --force-recreate database
```

- cache erzeugung

 ```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --detach --build --force-recreate cache
```
