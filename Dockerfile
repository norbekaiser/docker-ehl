FROM debian:stable-slim
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends nasm 
RUN apt-get install -y --no-install-recommends binutils
RUN apt-get install -y --no-install-recommends gdb
RUN apt-get install -y --no-install recommends git
RUN git clone https://github.com/longld/peda.git /opt/peda
RUN echo "source /opt/peda/peda.py" >> /etc/gdb/gdbinit