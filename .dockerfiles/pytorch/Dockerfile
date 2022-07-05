FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade tensorboard

# loading my basic ubuntu setting files
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"
RUN cd / && git clone https://github.com/zomorodiyan/ubuntu
RUN cp -r /ubuntu/.vim* /ubuntu/.zshrc /ubuntu/.tmux.conf /root/ 
