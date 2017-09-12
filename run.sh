#!/bin/sh

rm -rf master.zip master MovieService-master
curl -O -L https://github.com/BoyCook/MovieService/archive/master.zip
unzip master.zip
cd MovieService-master
mvn clean package
nohup java -jar target/movie-service.jar --server.port=5000 -Djava.awt.headless=true &
cd ../
./gradlew
