#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR=nvim
export BROWSER=brave-browser
export TERMINAL=alacritty
export READER=zathura

alias vi=nvim
alias vim=nvim

source $HOME/.cargo/env

export GOPATH=$HOME/go
export GOROOT=/usr/lib/go
export PATH=$GOROOT/bin:$PATH

export PATH=$PATH:$HOME/.config/lsp

export JAR=$HOME/.config/lsp/jdtls/plugins/org.eclipse.equinox.launcher_*.jar
export JDTLS_CONFIG=$HOME/.config/lsp/jdtls/config_linux
export WORKSPACE=$HOME/jdtls_workspace

