#!/bin/bash

# wait for other side to push
sleep 10

cd /var/www/literally.pictures/html
git fetch
git reset --hard origin/master
