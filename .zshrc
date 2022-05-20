# ---- woodwell --------------------------------------------------------------
DDT_INPUT_CATALOG=/home/m/work/tem-data/
DDT_WORKFLOWS=/home/m/work/tem-output/
PWD=/home/m/work/dvm-dos-tem/
export SITE_SPECIFIC_INCLUDES="-I/usr/include/jsoncpp"
# ----------------------------------------------------------------------------
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/m/.local/bin:$PATH

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
export ZSH="/home/m/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="amuse"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=()
source ~/.oh-my-zsh/oh-my-zsh.sh

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
#alias tensorflow="docker run -it --rm -u $(id -u):$(id -g) --gpus all -v $(pwd):/workspace/ tens bash"
alias tensorflow="docker run -it --rm -u $(id -u):$(id -g) --gpus all -v $(pwd):/workspace/ tensorflow-gpu-jupyter bash"
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
alias work="cd /home/m/work/"

export PATH="$HOME/.pyenv/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# to-do:
# github push without token
