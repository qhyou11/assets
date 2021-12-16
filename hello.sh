#!/bin/bash
sudo apt-get update -y
sudo apt install python3-pip -y
sudo pip3 install flask
mkdir /opt/demo
cd /opt/demo


cat <<EOF > hello.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!${1}'
EOF


export FLASK_APP=hello
export FLASK_ENV=development
nohup flask run &
