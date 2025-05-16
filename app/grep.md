Boa! 😄 Agora vamos fazer buscas dentro do arquivo `meu_log.txt` para localizar textos específicos. O comando ideal para isso é o clássico:

### 🔍 grep

#### Exemplo básico:
```bash
grep "automatica" meu_log.txt
```
Procura todas as linhas que contenham a palavra "automatica".

---

### 🧪 Exemplos práticos:

1. 🔎 Buscar por uma palavra específica (case sensitive):
```bash
grep "Linha" meu_log.txt
```

2. 🔍 Ignorar maiúsculas/minúsculas (case insensitive):
```bash
grep -i "linha" meu_log.txt
```

3. 🕵️ Mostrar número da linha junto:
```bash
grep -n "log" meu_log.txt
```

4. 🔁 Buscar por múltiplas palavras:
```bash
grep -E "automatica|erro|sucesso" meu_log.txt
```

5. 📜 Mostrar linhas antes e depois da ocorrência:
```bash
grep -C 2 "automatica" meu_log.txt
```
Isso mostra 2 linhas antes e 2 depois da linha encontrada.

---

### 👀 E se quiser monitorar e filtrar ao mesmo tempo?

Você pode usar grep com tail -f:

```bash
tail -f meu_log.txt | grep "erro"
```

Assim ele vai exibir em tempo real apenas as novas linhas que contenham a palavra "erro".

Se quiser, posso te mostrar como filtrar por data, criar relatórios simples, ou usar expressões regulares também. Quer explorar mais?