#!/bin/bash
set -e

cd books
mvn clean package
docker build . -t books-i

cd ../stars/
mvn clean package
docker build . -t stars-i

cd ../..