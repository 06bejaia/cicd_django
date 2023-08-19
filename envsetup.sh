#!/bin/bash

if [ -d "venv" ]
then
    echo " folder exsists"
else
    python3 -m venv venv
fi

echo $pwd

pip install -r requirements.txt
pip install django


if [ -d "logs" ]
then 
    echo "folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "setup finished"
