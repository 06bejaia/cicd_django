#!/bin/bash

source env/bin/activate

cd /var/lib/jenkins/workspace/nacer/app

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic -- no-input

echo "Migrations done"

cd /var/lib/jenkins/workspace/nacer


sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"