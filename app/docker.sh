#!/bin/sh

docker run --rm -it \
    --privileged \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /lib/modules:/lib/modules \
    seu_imagem:minikube
