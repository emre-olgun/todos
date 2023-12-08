aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ECR_REGISTRY} 
docker push "${IMAGE_TAG_REACT}"
docker push "${IMAGE_TAG_NODE}"
docker push "${IMAGE_TAG_POSTGRES}"