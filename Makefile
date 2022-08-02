.DEFAULT_GOAL := help

include makefiles/colors.mk
include makefiles/help.mk
include makefiles/macros.mk

.PHONY: up
## Bring up MySQL
up:
	$(call print,Bringing up MySQL)
	@docker-compose up -d

.PHONY: down
## Bring down MySQL
down:
	$(call print,Bringing down MySQL)
	@docker-compose down

.PHONY: connect
## Connect to MySQL
connect:
	$(call print,Connect to MySQL)
	@mysql -h 127.0.0.1 -uroot -ppassword
