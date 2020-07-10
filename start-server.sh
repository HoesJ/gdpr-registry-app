#!/bin/bash

# Prepare
python manage.py makemigrations axes audit jet dashboard
python manage.py migrate
python manage.py createsuperuser
python manage.py populate
python manage.py collectstatic
python manage.py runserver 0.0.0.0:$DJANGO_PORT
