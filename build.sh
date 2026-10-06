#!/usr/bin/env bash
set -o errexit

# Upgrade pip to properly resolve modern wheels (like rapidfuzz)
python -m pip install --upgrade pip

# Install dependencies and perform Django build steps
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate
python manage.py compilemessages
