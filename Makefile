.PHONY: setup reset download

setup: download
	docker-compose up -d --build

logs:
	docker-compose logs -f

reset:
	docker-compose down
	rm -rf landingpage restaurants-api restaurants-front

download:
	git clone git@github.com:gastronomic-evaluations/restaurants-api.git
	git clone git@github.com:gastronomic-evaluations/restaurants-front.git
	git clone git@github.com:gastronomic-evaluations/landingpage.git

dev:
	docker-compose up -d
