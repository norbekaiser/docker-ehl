FROM debian:stable-slim
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends nasm 
RUN apt-get install -y --no-install-recommends binutils
RUN apt-get install -y --no-install-recommends gdb
RUN apt-get install -y --no-install-recommends git
RUN apt-get install -y --no-install-recommends ca-certificates
RUN apt-get install -y --no-install-recommends gcc
RUN apt-get install -y --no-install-recommends libc-dev
RUN git clone https://github.com/longld/peda.git /opt/peda
RUN echo "source /opt/peda/peda.py" >> /etc/gdb/gdbinit
RUN apt-get remove -y ca-certificates
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /varlib/apt/lists/*