docker build --force-rm -t "$(IMAGE_TAG_REACT)" "${WORKSPACE}/k8s/client/Dockerfile"
docker build --force-rm -t "$(IMAGE_TAG_NODE)" "${WORKSPACE}/k8s/server/Dockerfile"
docker build --force-rm -t "$(IMAGE_TAG_POSTGRES)" "${WORKSPACE}/k8s/database/Dockerfile"