🎯 Objetivo:

- Um script que escreve uma nova linha de log a cada 2 segundos.
- Usar tail -f para acompanhar em tempo real.

### 1. Criando o script de geração de log

Crie um arquivo chamado gerador_log.sh com o conteúdo abaixo:

```bash
#!/bin/bash

ARQUIVO="meu_log.txt"

echo "Iniciando geração de log em $ARQUIVO"
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Linha de log gerada automaticamente" >> "$ARQUIVO"
    sleep 2
done
```

### 2. Dê permissão para executar o script:

```bash
chmod +x gerador_log.sh
```

### 3. Execute o script em um terminal:

```bash
./gerador_log.sh
```

Ele começará a escrever no arquivo meu_log.txt indefinidamente.

### 4. Em outro terminal, rode:

```bash
tail -f meu_log.txt
```
