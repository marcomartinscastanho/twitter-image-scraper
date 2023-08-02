#!/bin/sh

source ./env/.env
cd ntf-backend
source venv/bin/activate
python manage.py celery
