FROM nvcr.io/nvidia/pytorch:24.04-py3


RUN pip install --no-cache-dir jupyterlab

WORKDIR /home

EXPOSE 8888

RUN useradd -m -s /bin/bash developer
USER developer

CMD ["bash"]
