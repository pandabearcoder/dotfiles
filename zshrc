export ZSH=~/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export PATH=$PATH:/custom/path/here
# export JAVA_HOME=/java/path/here
# export ANDROID_HOME=/android/path/here

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Sys Alias
alias ls="ls --color  -lh"
alias rm="rm -i"

# Import dev_wrapper
. ~/.dev_wrapper
