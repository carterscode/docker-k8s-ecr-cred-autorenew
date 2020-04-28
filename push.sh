docker build -t carterfields/k8s-ecr-cred-autorenew .
docker tag carterfields/k8s-ecr-cred-autorenew:latest carterfields/k8s-ecr-cred-autorenew:$1
docker tag carterfields/k8s-ecr-cred-autorenew:latest carterfields/k8s-ecr-cred-autorenew:latest
docker push carterfields/k8s-ecr-cred-autorenew:$1
docker push carterfields/k8s-ecr-cred-autorenew:latest
