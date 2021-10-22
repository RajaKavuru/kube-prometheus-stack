#!/usr/bin/bash

kubectl port-forward svc/prometheus-grafana 8000:80 > /dev/null 2>&1 &
kubectl port-forward svc/prometheus-kube-prometheus-alertmanager 9093 > /dev/null 2>&1 &
kubectl port-forward svc/prometheus-kube-prometheus-prometheus 9090 > /dev/null 2>&1 &
kubectl port-forward svc/spring-prometheus-demo-service 8080 > /dev/null 2>&1 &

wait