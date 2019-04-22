cd /home/app/ma/current
docker-compose -f docker-compose.production.yml down
docker-compose -f docker-compose.production.yml build
docker-compose -f docker-compose.production.yml run --rm rails rake db:create
docker-compose -f docker-compose.production.yml run --rm rails rake db:migrate
docker-compose -f docker-compose.production.yml stop
docker-compose -f docker-compose.production.yml up --build -d
docker ps
