FROM ubuntu:20.04

LABEL maintainer="cicieroreis@outlook.com"
LABEL version="0.1"
LABEL description="This is a custom Docker Image for Ubuntu."

ARG DEBIAN_FRONTEND=noninteractive

# Atualizar pacotes e instalar dependências iniciais
RUN apt-get update && \
    apt-get -y install \
    curl \
    apt-transport-https \
    git \
    gpg \
    openssh-server \
    sudo \
    unzip \
    vim \
    zip && \
    apt-get clean

# Baixar e instalar kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Instalar Minikube
RUN curl -LO "https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64" && \
    chmod +x ./minikube-linux-amd64 && \
    mv ./minikube-linux-amd64 /usr/local/bin/minikube

# Instalar Docker dentro do container
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

# Criar usuário e configurar senha
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 creis && \
    echo 'creis:12345' | chpasswd

# Adicionar o usuário ao grupo Docker
RUN usermod -aG docker creis

# Expor a porta 22
EXPOSE 22
