FROM rocm/rocm-terminal:6.0.2

RUN sudo apt -y install wget \
    && wget https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz \
    && tar -xf teamredminer-v0.10.21-linux.tgz \
    && rm teamredminer-v0.10.21-linux.tgz

WORKDIR /teamredminer

ENTRYPOINT ["./teamredminer"]
