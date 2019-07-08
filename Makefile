.PHONY: all start download

all: start

start: download
	docker-compose up -d

download:
	git clone git@github.com:gastronomic-evaluations/restaurants-api.git
	#git clone git@github.com:jeffersondanielss/gastronomic-evaluations-front.git
	#git clone git@github.com:jeffersondanielss/gastronomic-evaluations-api-gateway.git
	#git clone git@github.com:jeffersondanielss/gastronomic-evaluations-users-api.git
