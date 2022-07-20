FROM nvcr.io/nvidia/pytorch:22.06-py3

# installing packages by apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tmux && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y zsh && rm -rf /var/lib/apt/lists/*

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
RUN git clone https://github.com/zomorodiyan/ubuntu
RUN cd ubuntu && cp -r .vim* .gitconfig .zshrc .tmux.conf /root/
RUN cp -r /ubuntu/.gitconfig /ubuntu/.oh-my-zsh /root/
