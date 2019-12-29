autoload colors zsh/terminfo
colors
setopt auto_cd
setopt correctall

export JAVA_HOME=/usr/lib/jvm/jdk-11.0.2
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:${JAVA_HOME}/bin
#export CLASSPATH=$JUNIT_HOME/junit.jar:/myproject/classes:/myproject/lib/something.jar
#go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=30
export SSH_KEY_PATH="~/.ssh/rsa_id"

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  ubuntu
)

source $ZSH/oh-my-zsh.sh

alias gti="git"
alias vi="nvim"
alias ys="yarn start"
alias yt="yarn test"
alias ytv="yarn test --verbose"
alias t="touch"
alias xx="exit"

hex_to_rgb() {
    # Usage: hex_to_rgb "#FFFFFF"
    : "${1/\#}"
    ((r=16#${_:0:2},g=16#${_:2:2},b=16#${_:4:2}))
    printf '%s\n' "$r $g $b"
}

rgb_to_hex() {
    # Usage: rgb_to_hex "r" "g" "b"
    printf '#%02x%02x%02x\n' "$1" "$2" "$3"
}

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ "$TMUX" = "" ]; then tmux; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gabriele/.sdkman"
[[ -s "/home/gabriele/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gabriele/.sdkman/bin/sdkman-init.sh"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
