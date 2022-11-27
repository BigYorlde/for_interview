THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: up up-scale start down destroy stop restart ps db-shell db-create db-restore
up:
	docker-compose -f myapp.yaml up -d $(c)
up-scale:
	docker-compose -f myapp.yaml up --scale web_app=$(scale) -d
start:
	docker-compose -f myapp.yaml start $(c)
down:
	docker-compose -f myapp.yaml down $(c)
stop:
	docker-compose -f myapp.yaml stop $(c)
restart:
	docker-compose -f myapp.yaml stop $(c)
	docker-compose -f myapp.yaml up -d $(c)
ps:
	docker-compose -f myapp.yaml ps
db-shell:
	docker-compose -f myapp.yaml exec mysql mysql -uroot -p123
db-create:
	docker-compose -f myapp.yaml exec mysql mysql -uroot -p123 -e "create database $(db_name);"
db-restore:
	docker-compose -f myapp.yaml exec mysql mysql -uroot -p123 -e "use $(db_name);" -e "source $(db_path);"


