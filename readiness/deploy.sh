#!/bin/bash

if [ "$1" == "" ]; then
  echo "Step number must be a param"
  exit 1
fi

clear

kubectl -n readiness apply -f step$1/deployment-v2.yaml

for i in {1..20}
do
  curl -m 1 http://cluster.local/healthz
  sleep 1
done  
