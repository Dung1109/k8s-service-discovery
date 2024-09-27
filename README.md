kind load docker-image `tayduong/k8s-springboot-discovery:latest` --name my-cluster


docker exec -it my-cluster-control-plane crictl images

docker image tag tayduong/k8s-springboot-discovery:latest ngocanhnguyentayduong/k8s-springboot-discovery:latest