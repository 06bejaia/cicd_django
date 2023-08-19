#!/bin/bash

if [ -d "env" ]
then
    echo " folder exsists"
else
    python3 -m venv env
fi

echo $pwd

pip3 install -r requirements.txt


pip3 freeze


if [ -d "logs" ]
then 
    echo "folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "setup finished"
