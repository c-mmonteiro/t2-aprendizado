sudo docker build -t aprendizado .
sudo docker run -it -p 8888:8888 -v ./:/home aprendizado
