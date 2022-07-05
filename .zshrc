# Path to your oh-my-zsh installation.
source ~/.oh-my-zsh/oh-my-zsh.sh

# ---- woodwell --------------------------------------------------------------
#DDT_INPUT_CATALOG=/home/zo/work/tem-data/
#DDT_WORKFLOWS=/home/zo/work/tem-output/
#PWD=/home/zo/work/dvm-dos-tem/
#export SITE_SPECIFIC_INCLUDES="-I/usr/include/jsoncpp"
# ----------------------------------------------------------------------------
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=~/.local/bin:$PATH

# ---- latex for matplotlib --------------------------------------------------
#export PATH=/usr/local/texlive/2021/install-tl.log:$PATH
#export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/man:$MANPATH
#export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/info:$INFOPATH

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



# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="amuse"
# ZSH_THEME="ys"
# ZSH_THEME="bureau"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=()

# applications
alias pycharm='~/pycharm/bin/pycharm.sh'
alias tmux="TERM=screen-256color-bce tmux"

alias tensorflow="docker run -it --rm -u $(id -u):$(id -g) --gpus all -v $(pwd):/workspace/ tensorflow-gpu-jupyter bash"
# see if TensorFlow has access to GPUs
# print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))

alias pytorch="sudo docker run -it --name torch --rm --gpus all -v $(pwd):/work/ --runtime=nvidia -p 8082:22 -p 8083:6006 pytorch:latest"
alias tb="tensorboard --logdir=runs" #(run in container)
alias sshtb="ssh -L 8083:127.0.0.1:6006 zo@zo -p 8082" # run local, <usr>@<host>

alias pymc="docker run -it --rm -v $(pwd):/work/ pymc bash"
alias jn="docker run -it --rm  -p 8884:8884 -v $(pwd):/work/ jupyternotebook bash"
alias tem=" docker-compose exec -u root dvmdostem-run bash"

# shortcut
alias py="python3"
alias python="python3"
alias fortran="gfortran -o exe % && ./exe"
alias retox='tox --recreate -e py38'
alias invert='xcalib -invert -alter'
alias restart='exec "$SHELL"' # restart your shell e.g. enable newly installed
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias tmuxrc="vim ~/.tmux.conf"
alias src="source ~/.zshrc"
alias install="pip install ."
alias dc="docker-compose"
alias dockershow="sudo docker system df"
alias gits="git status -s"
alias gitl="git log --oneline"
alias test="pytest --cov=." # run tests
alias copy="cat ~/.ps|xclip -i"
#alias work="cd /home/zo/work/"

# to-do:
# github push without token
