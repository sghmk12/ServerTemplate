#!/bin/bash

docker build -t snvercil/test .

docker run -d -p 3000:80 \
  --name=frontend \
  -v $PWD:/app docker.io/snvercil/test:latest