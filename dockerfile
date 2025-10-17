FROM nvcr.io/nvidia/tensorflow:24.04-tf2-py3


RUN pip install --no-cache-dir \
    jupyter \
    matplotlib \
    pandas \
    scikit-learn \
    optuna \
    psycopg2-binary \
    tensorboard

WORKDIR /home

EXPOSE 8888


CMD ["bash"]
