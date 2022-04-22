.DEFAULT_GOAL := help

include help.mk

.PHONY: up
## Bring up MySQL
up:
	docker-compose up -d

.PHONY: down
## Bring down MySQL
down:
	docker-compose down


.PHONY: connect
## Connect to MySQL
connect:
	mysql -h 127.0.0.1 -uroot -ppassword
