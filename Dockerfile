FROM debian:stable-slim
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends nasm 
RUN apt-get install -y --no-install-recommends binutils
RUN apt-get install -y --no-install-recommends gdb