FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*
#RUN pip install --upgrade comet_ml
RUN pip install --upgrade tensorboard

#RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

# loading my basic ubuntu setting files
#RUN mkdir ~/nf/ && git clone https://github.com/zomorodiyan/ubuntu ~/nf/
#RUN cp ~/nf/.vimrc ~ && cp ~/nf/.zshrc ~ && cp ~/nf/.tmux.conf ~ 
#RUN cp -r ~/nf/.templates ~ && cp -r ~/nf/.vim ~
#RUN rm -r ~/nf
#RUN mkdir /worky && cd /worky

