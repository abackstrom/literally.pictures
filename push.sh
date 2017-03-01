#!/bin/bash

# synology diskstation isn't nice about setting the environment in scheduled tasks
HOME=/var/services/homes/annika

# update index.txt from dropbox
cd /volume1/annika/literally.pictures
cp /volume1/sync/dropbox/Notes/literally.pictures.txt /volume1/annika/literally.pictures/index.txt

# push to remote repository
git add index.txt
git commit -am 'Automatic commit of index.txt'
git push origin HEAD
