#!/bin/bash

docker exec ${PWD##*/}_php_1 sh -c 'cd /code && php composer.phar install && cp .env.example .env && php artisan key:generate'
sudo chown $USER:www-data -R code/bootstrap/cache
sudo chown $USER:www-data -R code/storage
sudo chmod 775 -R code/bootstrap/cache
sudo chmod 775 -R code/storage
cd code/ && npm install
