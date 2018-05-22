#!/bin/bash
set -e

cd ./books/
mvn clean package
mvn clean package
docker build . -t books-i
docker tag books-i luismoramedina/books-i
docker push luismoramedina/books-i

cd ../stars/
mvn clean package
docker build . -t stars-i
docker tag stars-i luismoramedina/stars-i
docker push luismoramedina/stars-i

cd ../key-repo/
docker build . -t key-repo
docker tag key-repo luismoramedina/key-repo
docker push luismoramedina/key-repo

cd ../..