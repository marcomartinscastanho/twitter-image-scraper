#!/bin/sh

brew services stop redis
brew services start redis

source ./env/.env
cd ntf-backend
source venv/bin/activate
python manage.py runserver
