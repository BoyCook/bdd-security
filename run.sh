#!/bin/sh

curl -O -L https://codeload.github.com/BoyCook/MovieService/zip/master
unzip MovieService-master.zip
cd MovieService-master
mvn clean package && java -jar target/movie-service.jar --server.port=5000 -Djava.awt.headless=true
./gradlew
