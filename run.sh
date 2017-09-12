#!/bin/sh

rm -rf master.zip master MovieService-master run.pid
curl -O -L https://github.com/BoyCook/MovieService/archive/master.zip
unzip master.zip
cd MovieService-master
mvn clean package
nohup java -jar target/movie-service.jar --server.port=5000 > /dev/null 2>&1 & echo $! > run.pid
cd ../
./gradlew
kill -9 `cat MovieService-master/run.pid`
