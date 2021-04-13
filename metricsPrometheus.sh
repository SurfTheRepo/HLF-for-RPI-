#!/bin/bash

sudo docker run -d --name prometheus-server -p 9090:9090 \
  --network pi-network \
  --restart always \
  -v /home/otto/Desktop/Thesis/HLF-for-RPI-/prometheus.yml:/prometheus.yml \
  prom/prometheus \
  --config.file=/prometheus.yml
