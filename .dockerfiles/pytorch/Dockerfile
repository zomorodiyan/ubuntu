FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*

# loading my basic ubuntu setting files
RUN mkdir ~/nf/ && git clone https://github.com/zomorodiyan/ubuntu ~/nf/
RUN cp ~/nf/.vimrc ~ && cp ~/nf/.zshrc ~ && cp ~/nf/.templates ~
RUN cp ~/nf/.tmux.conf ~ && cp ~/nf/.vim ~
RUN rm -r ~/nf
