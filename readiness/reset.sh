#!/bin/bash

if [ "$1" == "" ]; then
  echo "Step number must be a param"
  exit 1
fi

kubectl -n readiness apply -f step$1/deployment-v1.yaml
kubectl -n readiness wait --for=condition=Ready pod -l app=probetester