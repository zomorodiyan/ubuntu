FROM nvcr.io/nvidia/tensorflow:22.06-tf2-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux
RUN apt update && apt install -y wget
RUN apt update && apt install -y vim
RUN apt update && apt install -y zsh
RUN rm -rf /var/lib/apt/lists/*

# tensorflow.tff
#RUN pip install --quiet --upgrade tensorflow-federated
#RUN pip install --quiet --upgrade nest-asyncio


RUN pip install jupyterlab
RUN pip install sklearn
# load .mat data file
RUN pip install h5py
# console progress bar for loops
RUN pip install tqdm

# loading my basic ubuntu setting files
RUN mkdir /init && git clone https://github.com/zomorodiyan/ubuntu /init
RUN cd /init && cp .zshrc .vimrc .tmux.conf /root/
RUN cd /init && cp -r .vim .gitconfig .oh-my-zsh /root/
