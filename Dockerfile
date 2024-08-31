FROM rocm/dev-ubuntu-22.04

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz \
    && tar -xf teamredminer-v0.10.21-linux.tgz \
    && rm teamredminer-v0.10.21-linux.tgz

WORKDIR /teamredminer-v0.10.21-linux

ENTRYPOINT ["./teamredminer"]
