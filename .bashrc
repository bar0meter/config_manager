export XDG_CONFIG_HOME=$HOME/.config
export CLICOLOR=1
export LSCOLORS=Fafacxdxbxegedabagacad
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
export EDITOR='vim'
export NPM_TOKEN=HxiwUgazWgvHAN6wEOs5UxphTuRvFgbbTstFig6fUe2ziMPP3Vqq1X8s31v2jx28wmhivofPyL8klGB96YqFAA==
export PATH=$PATH:$HOME/.bin

alias ls='ls --color'
alias tmn='tmux new-session -s'
alias tma='tmux attach-session -t'
alias vim='nvim'

# bind keys
bind ^l:clear-screen
bind '"jk":vi-movement-mode'

function git_clean() {
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}

alias git_clean=git_clean

__barometer_ps1() {
    DASH_COUNT=75
    DASH=''
    for i in $(eval echo "{1..$DASH_COUNT}"); do
        DASH+='-'
    done

    GIT_BRANCH=$(git branch --show-current 2>/dev/null)
    PS1=''
    if [ "$GIT_BRANCH" ]; then
        PS1+='\n\[\e[0m\][${GIT_BRANCH}]'
    fi
    PS1+='\n\[\e[0m\]${DASH}\n\[\e[0m\]| \[\e[0m\]\w \[\e[0m\]@ \[\e[0m\]\h \[\e[0m\](\[\e[0m\]\u\[\e[0m\])\n\[\e[0m\]| \[\e[0m\]'
}

__geohot_ps1() {
    PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
}

__novix_ps1() {
    # Make colorcoding available for everyone

    Black='\e[0;30m'        # Black
    Red='\e[0;31m'          # Red
    Green='\e[0;32m'        # Green
    Yellow='\e[0;33m'       # Yellow
    Blue='\e[0;34m'         # Blue
    Purple='\e[0;35m'       # Purple
    Cyan='\e[0;36m'         # Cyan
    White='\e[0;37m'        # White

    # Bold
    BBlack='\e[1;30m'       # Black
    BRed='\e[1;31m'         # Red
    BGreen='\e[1;32m'       # Green
    BYellow='\e[1;33m'      # Yellow
    BBlue='\e[1;34m'        # Blue
    BPurple='\e[1;35m'      # Purple
    BCyan='\e[1;36m'        # Cyan
    BWhite='\e[1;37m'       # White

    # Background
    On_Black='\e[40m'       # Black
    On_Red='\e[41m'         # Red
    On_Green='\e[42m'       # Green
    On_Yellow='\e[43m'      # Yellow
    On_Blue='\e[44m'        # Blue
    On_Purple='\e[45m'      # Purple
    On_Cyan='\e[46m'        # Cyan
    On_White='\e[47m'       # White

    NC="\e[m"               # Color Reset

    # new alert text
    ALERT=${BWhite}${On_Red} # Bold White on red background

    export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
}

__near_ps1() {
  export PS1='\[\e[0;38;5;26m\][\[\e[0;38;5;26m\]\u \[\e[0;36m\]\h\[\e[0;36m\]] \[\e[0;35m\][\[\e[0;35m\]\w\[\e[0;35m\]] \[\e[0;35m\]$ \[\e[0m\]'
}

PROMPT_COMMAND="__near_ps1"
. "$HOME/.cargo/env"

# Make sure to update bash (by default mac use v3)
# brew install bash
# sudo chpass -s <BASH_LOCATION> <username>
# brew install readline
# brew link --force readline (for .inputrc to work)




