#!/bin/sh

python manage.py collectstatic --noinput
python manage.py migrate
gunicorn core.wsgi --bind=0.0.0.0:80
