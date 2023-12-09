docker buildx build --force-rm -t "$(IMAGE_TAG_REACT)" "${WORKSPACE}/todos_client"
docker buildx build --force-rm -t "$(IMAGE_TAG_NODE)" "${WORKSPACE}/todos_server"
docker buildx build --force-rm -t "$(IMAGE_TAG_POSTGRES)" "${WORKSPACE}/todos_database"