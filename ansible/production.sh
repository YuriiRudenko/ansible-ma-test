cd /home/app/ma/current
docker-compose -f docker-compose.production.yml stop
docker-compose -f docker-compose.production.yml rm -f -v
docker-compose -f docker-compose.production.yml up --build -d
docker ps
