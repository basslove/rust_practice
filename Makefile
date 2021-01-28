# bundle
set: build up_d

reset: down prune set


# docker-compose
build:
	docker-compose build --no-cache

up:
	docker-compose up

up_d:
	docker-compose up -d

up_all:
	docker-compose up

restart:
	docker-compose restart app

up_f:
	docker-compose up --force-recreate app

up_f_d:
	docker-compose up --force-recreate -d app

down:
	docker-compose down

ps:
	docker-compose ps

logs:
	docker-compose logs -f


# docker
prune:
	docker system prune -af
