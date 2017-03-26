#!/bin/bash

# synology diskstation isn't nice about setting the environment in scheduled tasks
HOME=/var/services/homes/annika

cd "${HOME}/literally.pictures"

# update local copy
git fetch
git reset --hard origin/master

# update index.txt from dropbox
cp /volume1/sync/dropbox/Notes/literally.pictures.txt "${HOME}/literally.pictures/index.md"

# push to remote repository
git add index.md
git commit -am 'Automatic commit of index.md'
git push origin HEAD
