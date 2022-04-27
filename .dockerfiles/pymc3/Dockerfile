FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install jupyter numpy pandas statsmodels matplotlib plotly
RUN pip3 install seaborn sklearn tensorflow
RUN useradd -ms /bin/bash jupyter

#USER root
RUN apt-get update 
RUN apt-get install -y curl git vim wget 

# Install base utilities
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH
#USER solr

# install pymc3 by conda
RUN conda install -c conda-forge pymc3 theano-pymc mkl mkl-service

