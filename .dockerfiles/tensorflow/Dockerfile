FROM tensorflow/tensorflow:latest-gpu-jupyter

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y vim && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*

# install oh-my-zsh
# loading my basic ubuntu setting files
RUN cd / && git clone https://github.com/zomorodiyan/ubuntu
RUN cp -r /ubuntu/.vim* /ubuntu/.zshrc /ubuntu/.tmux.conf /
RUN cp -r /ubuntu/.gitconfig /ubuntu/.oh-my-zsh /
