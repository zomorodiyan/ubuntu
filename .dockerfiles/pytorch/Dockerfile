FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*


RUN pip install --upgrade tensorboard
RUN pip install torch_tb_profiler
RUN pip install pyro-ppl
RUN pip install tqdm  # console progress bar 
RUN pip install h5py


# install oh-my-zsh
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"
# loading my basic ubuntu setting files
RUN git clone https://github.com/zomorodiyan/ubuntu
RUN cd ubuntu && cp -r .vim* .gitconfig .zshrc .tmux.conf /root/
