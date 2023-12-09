docker build --force-rm -t "$(IMAGE_TAG_REACT)" "${WORKSPACE}/todos_client"
docker build --force-rm -t "$(IMAGE_TAG_NODE)" "${WORKSPACE}/todos_server"
docker build --force-rm -t "$(IMAGE_TAG_POSTGRES)" "${WORKSPACE}/todos_database"