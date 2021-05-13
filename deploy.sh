#!/bin/sh
if [ -z "$1" ]; then
  echo "You must enter in a version number argument."
  exit 1
elif [ "$2" = "rebuild" ]; then
  docker build -t kongaaron/flask-planets:$1 -t kongaaron/flask-planets:latest .
  docker push kongaaron/flask-planets && docker push kongaaron/flask-planets:$1
fi
docker stop planets && docker rm planets
docker run -d --network docker-compose_default --name planets -p 5000:5000 kongaaron/flask-planets:$1
