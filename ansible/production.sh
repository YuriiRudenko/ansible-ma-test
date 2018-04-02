cd /home/app/ma/current
docker-compose -f docker-compose.production.yml stop
docker-compose -f docker-compose.production.yml rm -f -v
docker run --rm current_rails rails db:create
docker run --rm current_rails rails db:migrate
docker-compose -f docker-compose.production.yml up -d
docker ps
