alias k=kubectl
kind delete cluster --name k8s
kind create cluster --name k8s --config ./k8s-cluster-config.yaml
kubectl apply -f ./k8s-nginx-ingress.yaml
sleep 15
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
kubectl apply -f ./k8s-metrics-server.yaml