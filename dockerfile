FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências (se existir)
COPY requirements.txt ./

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt || true

# Copia o conteúdo do diretório atual (opcional — pode ser omitido se for usar volume)
COPY . .

# Comando padrão ao iniciar o container
CMD ["python", "main.py"]
