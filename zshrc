export ZSH="/Users/kmossco/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git history zsh-autosuggestions zsh-syntax-highlighting)

export EDITOR='vim'
PROMPT_COMMAND='echo -ne "\033]0; ${PWD}\007"'

export HOMEBREW_NO_ANALYTICS=1

# Compilation flags
CFLAGS="-Wno-narrowing"
CXXFLAGS="$CFLAGS"

export LC_ALL=en_US.UTF-8

alias gp='git pull'
alias gb='git branch'
alias gs='git status'
alias gps='git push'
alias gcm='git checkout master'
alias gipum='git pull upstream master'
alias grmi='git rebase master -i'
alias nukegit='git branch | grep -v "master" | xargs git branch -D'
alias be='bundle exec'
alias \rspec='bundle exec rspec'
alias \rubocop='bundle exec rubocop'

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

