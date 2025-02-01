#!/bin/bash


kubectl rollout restart deployment/api-server
kubectl rollout restart deployment/react-nginx
kubectl rollout restart deployment/api-gateway
