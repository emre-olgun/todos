    echo "Deploying App on Kubernetes"
    envsubst < k8s/todos_chart/values-template.yaml > k8s/todos_chart/values.yaml
    sed -i s/HELM_VERSION/${BUILD_NUMBER}/ k8s/todos_chart/Chart.yaml
    AWS_REGION=$AWS_REGION helm repo add stable-todos s3://emre-helm-charts/stable/todos/ || echo "repository name already exists"
    AWS_REGION=$AWS_REGION helm repo update
    helm package k8s/todos_chart
    AWS_REGION=$AWS_REGION helm s3 push --force todos_chart-${BUILD_NUMBER}.tgz stable-todos
    kubectl create ns todos || echo "namespace todos already exists"
    kubectl delete secret regcred -n todos || echo "there is no regcred secret in todos namespace"
    kubectl create secret generic regcred -n todos \
        --from-file=.dockerconfigjson=/var/lib/jenkins/.docker/config.json \
        --type=kubernetes.io/dockerconfigjson
    AWS_REGION=$AWS_REGION helm repo update
    AWS_REGION=$AWS_REGION helm upgrade --install \
        todos-app-release stable-todos/todos_chart --version ${BUILD_NUMBER} \
        --namespace todos