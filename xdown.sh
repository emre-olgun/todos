#!/bin/bash
docker compose down
docker rmi $(docker image ls -aq)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)
