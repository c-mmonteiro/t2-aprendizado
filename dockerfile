1 FROM python
2
3 # Instala pacotes necessários:
4 RUN pip install --no-cache-dir jupyterlab
5
6 # Seta o diretório de trabalho (dentro do container):
7 WORKDIR /home
8
9 # Seta porta padrão do jupyter lab:
10 EXPOSE 8888
11
12 # Comando padrão a ser executado quando o container é iniciado:
13 CMD ["jupyter", "lab", "--ip='*'", "--allow-root"]
