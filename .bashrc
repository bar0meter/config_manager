# PROMPT STUFF

EXIT_STATUS() {
  local e=$?
  (( e )) && printf "Error $e "
  return $e
}

# PS1='\[\e[0;1;38;5;202m\]$(EXIT_STATUS)\[\e[0;1;93m\]\w\[\e[0;1;93m\]> \[\e[0m\]'
# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '
DASH=""
# repeated dash 100 times
for ((i=0; i<80; i++)); do
  DASH="$DASH-"
done

# PS1='\n$DASH\n\[\e[0m\]| \[\e[0m\]\w \[\e[0m\]@ \[\e[0m\]\H \[\e[0m\](\[\e[0m\]\u\[\e[0m\])\n\[\e[0m\]| \[\e[0m\]=\[\e[0m\]> \[\e[0m\]'

#########
# Aliases
#########

alias dus="du -hs * | sort -h"
alias brew86="arch -x86_64 brew"
alias brewARM="arch -arm64 brew"
alias mvn_package="mvn clean package spring-boot:repackage -DskipTests"

if type exa &> /dev/null; then
  alias ls=exa
fi

alias lls='ls -lh --sort=size --reverse'
alias llt='ls -l -snew'
alias bear='clear && echo "Clear as a bear!"'

alias history='history 1'
alias hs='history | grep '
alias co='git checkout'

# tmux
alias tma='tmux attach -t'
alias tmn='tmux new -s'
alias tml='tmux ls'

alias dus="du -hs * | sort -h"

alias brew86="arch -x86_64 brew"
alias brewARM="arch -arm64 brew"
alias mvn_package="mvn clean package spring-boot:repackage -DskipTests"

alias weather='curl -4 http://wttr.in/Seattle'
alias moon='curl -4 http://wttr.in/Moon'
alias vim=nvim
alias vi=nvim

# git
alias gs='git status'
alias gc='git commit'
alias gca='git add -A && git commit'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gf='git fetch'
alias gm='git merge'
alias gsm='git submodule update --remote --merge'

########
# ENV
########
EDITOR=nvim

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=/opt/homebrew/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=$PATH:$HOME/.mix/escripts
fpath=($fpath "/Users/barometer/.zfunctions")

export SDKMAN_DIR="/Users/barometer/.sdkman"
[[ -s "/Users/barometer/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/barometer/.sdkman/bin/sdkman-init.sh"

#determines search program for fzf
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi

#refer rg over ag
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

export JAR=$HOME/.config/lsp/jdtls/plugins/org.eclipse.equinox.launcher_*.jar
export JDTLS_CONFIG=$HOME/.config/lsp/jdtls/config_mac

export WORKSPACE=$HOME/jdtls_workspace

export PATH=$PATH:$HOME/.config/lsp

export PATH=$PATH:$HOME/.config/lsp/zls

export PATH=/opt/homebrew/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath=($fpath "/Users/barometer/.zfunctions")

export XDG_CONFIG_HOME=$HOME/.config

export CLICOLOR=1
export LSCOLORS=Fafacxdxbxegedabagacad

export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1

export KITTY_COLORS='dark'

# https://www.sublimetext.com/docs/command_line.html
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export PATH=$HOME/dev/protoc/bin:$PATH

##########
# FUNCTIONS
##########

git_clean() {
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}

. "$HOME/.cargo/env"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

__ps1() {
  o="\[\e[0;38;5;172m\]"
  w="\[\e[0m\]"
  g="\[\e[0;32m\]"
  b="\[\e[0;38;5;237m\]"

  B=$(git branch --show-current 2>/dev/null)
  git_branch=""
  if [ ! -z "$B" ]; then
    git_branch="$o($B)$w"
  fi
  PS1="$b\w$w $git_branch\n$g$ $w"
}

PROMPT_COMMAND="__ps1"

