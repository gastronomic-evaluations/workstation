.PHONY: setup reset download

setup: download
	docker-compose up -d --build

reset:
	docker-compose down
	rm -rf api-gateway landingpage restaurants-api restaurants-front users-api

download:
	git clone git@github.com:gastronomic-evaluations/restaurants-api.git
	git clone git@github.com:gastronomic-evaluations/restaurants-front.git
	git clone git@github.com:gastronomic-evaluations/api-gateway.git
	git clone git@github.com:gastronomic-evaluations/landingpage.git
	git clone git@github.com:gastronomic-evaluations/users-api.git
