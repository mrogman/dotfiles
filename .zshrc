## Source shell functions 
if [ -f ~/dotfiles/.shell_functions]; then
  source ~/dotfiles/.shell_functions
fi

## source bash profile
source ~/.bash_profile

# aliases
if [ -f $HOME/.aliases ]; then
  . $HOME/.aliases
fi

# Zsh private additions
if [ -f $HOME/.zsh-private ]; then
  . $HOME/.zsh-private
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/matt/.oh-my-zsh

# zsh powerline installation
#r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# tmux powerline **deprecated (remove)**
#export TMUX_POWERLINE="~/terminal/tmux-powerline"

export PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# clipboard to default
set clipboard=unnamed

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-railscasts.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby python)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Print out running Tmux sessions, if tmux is present
if hash tmux 2> /dev/null; then
  sessions=$(tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

  if [ $sessions ]; then
    echo "\nTmux sessions: $sessions"
  fi
fi

## Functions

function setJava {

  # set java 6
  if [ "$1" = "6" ]
    then
    JAVA_HOME="/usr/lib/jvm/java-1.6.0-openjdk-amd64"
  fi
  # set java 7
  if [ "$1" = "7" ]
    then
    JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-amd64"
  fi
  # set java 8
  if [ "$1" = "8" ]
    then
    JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
  fi

  export JAVA_HOME
  java -version

}

## Set JAVA_HOME
setJava 8


