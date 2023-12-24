#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/nextcloud-docker-compose-all-in-one-onlyoffice $DESTINATION
rm -rf $DESTINATION/.git


