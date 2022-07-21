FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux
RUN apt update && apt install -y wget
RUN apt update && apt install -y zsh
RUN rm -rf /var/lib/apt/lists/*

#RUN pip install jupyter
RUN pip install jupyterlab
# visualization web application
RUN pip install --upgrade tensorboard
# profiling web application
RUN pip install torch_tb_profiler
# print nn's graph
RUN pip install torchsummary
# load .mat data file
RUN pip install h5py
# console progress bar
RUN pip install tqdm
RUN pip install pyro-ppl
#RUN pip install torchaudio

# loading my basic ubuntu setting files
RUN mkdir /init && git clone https://github.com/zomorodiyan/ubuntu /init
RUN cd /init && cp .zshrc .vimrc .tmux.conf /root/
RUN cd /init && cp -r .vim .gitconfig .oh-my-zsh /root/
