#!bin/bash

docker build -t java:maven -f Dockerfile .

docker tag go:nvim liberxue/java_maven:0.0.1

docker push lberxue/java_maven:0.0.1
