#!/bin/bash

kubectl delete configmap nginx-config && \
kubectl create configmap nginx-config --from-file=nginx.conf=/home/daev681/yaml/service/config/nginx.conf && \
kubectl rollout restart deployment/react-nginx

