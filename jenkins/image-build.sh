docker build --force-rm -t "$(IMAGE_TAG_REACT)" "${WORKSPACE}/k8s/client"
docker build --force-rm -t "$(IMAGE_TAG_NODE)" "${WORKSPACE}/k8s/server"
docker build --force-rm -t "$(IMAGE_TAG_POSTGRES)" "${WORKSPACE}/k8s/database"