all: stop up

stop:
	docker compose stop

down:
	clear
	docker compose down

clean:
	clear
	docker compose stop
	docker compose down
	docker container prune -f
	docker image prune -f
	docker network prune -f
	docker volume prune -f

ps:
	docker compose ps -a

up:
	clear
	docker compose up -d --build --remove-orphans
	docker compose ps -a



