#!/bin/bash

cd /volume1/annika/literally.pictures
cp /volume1/sync/dropbox/Notes/literally.pictures.txt /volume1/annika/literally.pictures/index.txt
git add index.txt
git commit -am 'Automatic commit of index.txt'
git push origin HEAD
