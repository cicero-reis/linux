#!/bin/bash

ARQUIVO="meu_log.txt"

echo "Finalizando geração de log em $ARQUIVO"
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Linha de log gerada com erro" >> "$ARQUIVO"
    sleep 2
done
