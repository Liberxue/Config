#!bin/bash

docker build -t go:nvim -f Dockerfile .

docker tag go:nvim liberxue/nvim_dev:0.0.1

docker push lberxue/nvim_dev
