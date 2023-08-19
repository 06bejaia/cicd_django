#!/bin/bash

if [ -d "venv" ]
then
    echo " folder exsists"
else
    python3 -m venv venv
fi

echo $pwd

pip3 install -r requirements.txt
pip3 install django


if [ -d "logs" ]
then 
    echo "folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "setup finished"
