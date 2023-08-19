#!/bin/bash

if [ -d "denv" ]
then
    echo " folder exsists"
else
    python3 -m venv denv
fi

echo $pwd

pip install -r requirements.txt


if [ -d "logs" ]
then 
    echo "folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "setup finished"
