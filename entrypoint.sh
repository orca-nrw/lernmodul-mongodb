#!/bin/sh
mongod --config /home/jovyan/mongod.conf
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
echo jupyter notebook list