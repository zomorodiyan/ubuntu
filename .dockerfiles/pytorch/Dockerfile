# Use the NVIDIA Pytorch image as the base image
FROM nvcr.io/nvidia/pytorch:24.05-py3

# Install dependencies
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
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# loading my basic ubuntu setting files
RUN mkdir /init && git clone https://github.com/zomorodiyan/ubuntu /init
RUN cd /init && cp .zshrc .vimrc .tmux.conf /root/
RUN cd /init && cp -r .vim .gitconfig .oh-my-zsh /root/

# Set the default command to python3
CMD ["zsh"]
