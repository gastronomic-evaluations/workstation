.PHONY: all start download

all: start

start: download
	docker-compose up -d

download:
	git clone git@github.com:jeffersondanielss/gastronomic-evaluations-api.git
	git clone git@github.com:jeffersondanielss/gastronomic-evaluations-front.git
	git clone git@github.com:jeffersondanielss/gastronomic-evaluations-api-gateway.git
