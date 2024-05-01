#!/usr/bin/env bash

make forum
python manage.py migrate --no-input
python manage.py collectstatic --no-input



gunicorn biostar.forum.wsgi:application --bind 0.0.0.0:8000