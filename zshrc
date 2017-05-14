# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/Users/bruno/.oh-my-zsh
export EDITOR="vim"
ZSH_THEME="pygmalion"
DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  docker
  vi-mode
  rbenv
  zsh-syntax-highlighting
  zsh-autosuggestions
  sublime
)

source $ZSH/oh-my-zsh.sh

PS1="$PS1"'λ '

PROMPT="λ "

# PS1='$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
export TERM=xterm-256color

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

#php
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# pilot
export PATH=$HOME/.pilot/shims:$HOME/.pilot/bin:$PATH
eval $(pilot env)

alias pspilot="ps aux | grep pilot\ daemon | grep -v grep"
alias pilotunload="launchctl unload ~/Library/LaunchAgents/com.github.intercom.pilot.daemon.plist"
alias pilotload="launchctl load ~/Library/LaunchAgents/com.github.intercom.pilot.daemon.plist"

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

#alias
alias peir="pilot exec intercom rspec"
alias hcp="hammer console production"
alias gp="git pull"
alias gs="git status"
