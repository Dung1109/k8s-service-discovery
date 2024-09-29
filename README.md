kind load docker-image tayduong/k8s-springboot-discovery:latest --name my-clt

kind create cluster --name my-clt --config kind-cluster.yml

kind delete clusters my-clt

docker exec -it my-cluster-control-plane crictl images

docker image tag tayduong/k8s-springboot-discovery:latest ngocanhnguyentayduong/k8s-springboot-discovery:latest

[//]: # (run this command to apply the manifests with kustomize)
k apply -k .

k run -i --tty test --image=busybox --restart=Never --rm -- sh

k port-forward deploy/employee-deployment 8080

kubectl config current-context

kubectl config use-context my-clt