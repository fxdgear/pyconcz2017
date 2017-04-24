make_migrations:
	docker-compose run web python manage.py makemigrations
run_migrations:
	docker-compose run web python manage.py migrate

build:
	docker-compose -f docker-compose.testing.yml build

py27:
	docker-compose -f docker-compose.testing.yml run 2.7.13
py34:
	docker-compose -f docker-compose.testing.yml run 3.4.6
py35:
	docker-compose -f docker-compose.testing.yml run 3.5.3
py36:
	docker-compose -f docker-compose.testing.yml run 3.6.1
all:
	docker-compose -f docker-compose.testing.yml up -d
logs:
	docker-compose -f docker-compose.testing.yml logs
