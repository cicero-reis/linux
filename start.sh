#!/bin/sh
ssh -o StrictHostKeyChecking=no creis@172.31.0.3

# Isso desabilita permanentemente a verificação de chaves para essa conexão e não grava a chave no arquivo known_hosts, evitando mensagens de conflito no futuro.
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null creis@172.31.0.3

# senha 12345
