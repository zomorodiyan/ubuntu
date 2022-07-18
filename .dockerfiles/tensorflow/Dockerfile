FROM nvcr.io/nvidia/tensorflow:22.06-tf2-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y vim && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*

# tensorflow.tff
#RUN pip install --quiet --upgrade tensorflow-federated
#RUN pip install --quiet --upgrade nest-asyncio

RUN pip install sklearn
RUN pip install h5py # load .mat data file
RUN pip install tqdm # console progress bar for "for" loops.

# loading my basic ubuntu setting files
RUN cd / && git clone https://github.com/zomorodiyan/ubuntu
RUN cp -r /ubuntu/.vim* /ubuntu/.zshrc /ubuntu/.tmux.conf /root/
RUN cp -r /ubuntu/.gitconfig /ubuntu/.oh-my-zsh /root/
#ENTRYPOINT cd /work
