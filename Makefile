# 
default:

build:
	docker-compose build	

start:
	docker-compose up -d

stop:
	docker-compose down

update:
	docker pull jenkins/jenkins