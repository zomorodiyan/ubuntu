# ---- woodwell --------------------------------------------------------------
DDT_INPUT_CATALOG=/home/zo/work/tem-data/
DDT_WORKFLOWS=/home/zo/work/tem-output/
PWD=/home/zo/work/dvm-dos-tem/
export SITE_SPECIFIC_INCLUDES="-I/usr/include/jsoncpp"
# ----------------------------------------------------------------------------
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/zo/.local/bin:$PATH

# ---- latex for matplotlib --------------------------------------------------
export PATH=/usr/local/texlive/2021/install-tl.log:$PATH
export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/man:$MANPATH
export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/info:$INFOPATH

function unzip () {
  echo "unzipping all zip files in this directory..."
  for z in ./*.zip
    do unar -d $z > /dev/null #redirect stdout to /dev/null to avoid output
  done
  echo "done!"
}

function unrar () {
  echo "unzipping all zip files in this directory..."
  for z in ./*.rar
    do unar -d $z > /dev/null #redirect stdout to /dev/null to avoid output
  done
  echo "done!"
}

# Path to your oh-my-zsh installation.
export ZSH="/home/zo/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="amuse"
# ZSH_THEME="ys"
# ZSH_THEME="bureau"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=()
source ~/.oh-my-zsh/oh-my-zsh.sh

# applications
alias pycharm='~/pycharm/bin/pycharm.sh'

alias pytorch='docker run --name=torch -v $(pwd):/work --gpus all --rm -ti --runtime=nvidia -p 8082:22 -p 8083:6006 nvcr.io/nvidia/pytorch:22.02-py3 /bin/bash'

alias invert='xcalib -invert -alter'
alias retox='tox --recreate -e py38'
alias py="python3"
alias python="python3"
alias restart='exec "$SHELL"' # restart your shell e.g. enable newly installed
alias tmuxrc="vim ~/.tmux.conf"
alias tmux="TERM=screen-256color-bce tmux"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias src="source ~/.zshrc"
alias install="pip install ."
alias tensorflow="docker run -it --rm -u $(id -u):$(id -g) --gpus all -v $(pwd):/workspace/ tensorflow-gpu-jupyter bash"

alias pytorch="sudo docker run -it --name torch --rm --gpus all -v $(pwd):/work/ --runtime=nvidia -p 8082:22 -p 8083:6006 pytorch:latest"
# tensorboard --logdir lightning_logs   (run in container)
# ssh -L 8083:127.0.0.1:6006 <user>@<host> -p 8082  (run locally)

alias pymc="docker run -it --rm -v $(pwd):/work/ pymc bash"
alias jn="docker run -it --rm  -p 8884:8884 -v $(pwd):/work/ jupyternotebook bash"
alias dc="docker-compose"
# to see if tensorflow has access to GPUs
# print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))

alias tem=" docker-compose exec -u root dvmdostem-run bash"
alias showdocker="sudo docker system df"
alias gits="git status -s"
alias gitl="git log --oneline"
alias test="pytest --cov=." # run tests


alias fortran="gfortran -o exe % && ./exe"

alias work="cd /home/zo/work/"

alias copy="cat ~/.ps|xclip -i"



export PATH="$HOME/.pyenv/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# to-do:
# github push without token
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zo/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zo/conda/etc/profile.d/conda.sh" ]; then
        . "/home/zo/conda/etc/profile.d/conda.sh"
    else
        export PATH="/home/zo/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
