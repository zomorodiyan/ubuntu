DDT_INPUT_CATALOG=/home/zo/work/tem-data/
DDT_WORKFLOWS=/home/zo/work/tem-output/
PWD=/home/zo/work/dvm-dos-tem/
#PWD=/home/zo/work/dvm-dos-tem/

export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=/home/zo/.local/bin:$PATH

# ---- latex for matplotlib -------------------------------------------------
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

# Path to your oh-my-zsh installation.
export ZSH="/home/zo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
#plugins=(git)
plugins=()

source ~/.oh-my-zsh/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias invert="xcalib -invert -alter" #invert all colors in desktop session

alias tmuxrc="vim ~/.tmux.conf"
alias tmux="TERM=screen-256color-bce tmux"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias src="source ~/.zshrc"
alias tensorflow="docker run -it --rm -u $(id -u):$(id -g) --gpus all -v $(pwd):/workspace/ tens bash"
alias dc="docker-compose"
# to see if tensorflow has access to GPUs
# print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))
#
alias tem=" docker-compose exec -u root dvmdostem-run bash"
alias showdocker="sudo docker system df"
alias gits="git status -s"
alias gitl="git log --oneline" 
alias test="pytest --cov=." # run tests

alias fortran="gfortran -o exe % && ./exe"
alias work="cd /home/zo/work/"

export PATH="$HOME/.pyenv/bin:$PATH"
