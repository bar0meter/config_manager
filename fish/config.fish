set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude ".git"'

# display full directory names in prompt
set fish_prompt_pwd_dir_length 0
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'

set -x PATH $PATH /snap/bin
set -x PATH $PATH /home/thomas/bin
set -x PATH $PATH ~/.cargo/bin

function ignorehistory --on-event fish_prompt
    echo "all" | history delete --prefix ll ls exit echo clear cd > /dev/null
end

eval "$(/opt/homebrew/bin/brew shellenv)"

function vim
  nvim $argv
end

function gf
  git fetch --all --prune --tags
end

function gs
  git status
end

function gc
  git checkout $argv
end

function gca
  git add -A; and git commit $argv
end

function gd
  git diff $argv
end

function gl
  git pull $argv
end

function gcp
  git commit -p
end

function gp
  git push $argv
end

function mkpass
  head -c 12 /dev/urandom | base64
end

function g
  grep -RI --color=auto --exclude=tags --exclude-dir=.git --exclude-dir=build $argv
end

function ccd
  mkdir -p "$argv"
  and cd "$argv"
end
