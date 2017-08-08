# 
default:

build:
	docker pull jenkins/jenkins
	docker-compose build	

start:
	docker-compose up -d

stop:
	docker-compose down