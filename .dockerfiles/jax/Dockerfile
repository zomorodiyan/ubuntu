# Use the NVIDIA Jax image as the base image
FROM nvcr.io/nvidia/jax:23.08-py3

# Install system dependencies
RUN apt update && apt install -y tmux
RUN apt update && apt install -y zsh
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    curl \
    libopenblas-dev \
    libomp-dev \
    python3-pip \
    wget \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip
RUN pip3 install matplotlib


# loading my basic ubuntu setting files
RUN mkdir /init && git clone https://github.com/zomorodiyan/ubuntu /init
RUN cd /init && cp .zshrc .vimrc .tmux.conf /root/
RUN cd /init && cp -r .vim .gitconfig .oh-my-zsh /root/

WORKDIR /workspace
CMD ["zsh"]
