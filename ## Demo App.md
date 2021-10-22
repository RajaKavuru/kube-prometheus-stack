## Prometheus Demo

### 1. Installing Prometheus

run: `git clone https://github.com/prometheus-community/helm-charts`

run: `cd helm-charts/kube-prometheus-stack`

run: `helm install prometheus .`


### 2. Deploying the spring boot app

From the application's root directory:

run: `kubectl apply -f deploy.yml`


### 3. View your metrics and access the API

run: 
```
kubectl port-forward svc/prometheus-grafana 8000:80 > /dev/null 2>&1 &
kubectl port-forward svc/prometheus-kube-prometheus-alertmanager 9093 > /dev/null 2>&1 &
kubectl port-forward svc/prometheus-kube-prometheus-prometheus 9090 > /dev/null 2>&1 &
kubectl port-forward svc/spring-prometheus-demo-service 8080 > /dev/null 2>&1 &
```
    - You now have access to the prometheus stack as well as your API through