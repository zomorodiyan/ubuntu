# Use the NVIDIA TensorFlow image as the base image                             
FROM nvcr.io/nvidia/tensorflow:24.05-tf2-py3                                    
                                                                                 
# Install dependencies                                                          
RUN apt-get update && apt-get install -y \                                      
    python3-pip \                                                               
    wget                                                                        
RUN apt update && apt install -y tmux                                           
RUN apt update && apt install -y zsh                                            
RUN rm -rf /var/lib/apt/lists/*                                                 
                                                                                                                                                                   
# Install JAX with GPU support                                                  
RUN pip3 install jax[cuda] -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
                                                                                  
# Install PyTorch with GPU support                                              
RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu120
                                                                                  
# loading my basic ubuntu setting files                                         
RUN mkdir /init && git clone https://github.com/zomorodiyan/ubuntu /init        
RUN cd /init && cp .zshrc .vimrc .tmux.conf /root/                              
RUN cd /init && cp -r .vim .gitconfig .oh-my-zsh /root/                         
# Set the default command to python3                                            
CMD ["zsh"]
