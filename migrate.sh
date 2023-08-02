#!/bin/sh

cd ntf-backend
source venv/bin/activate
python manage.py makemigrations "$@"
python manage.py migrate "$@"
