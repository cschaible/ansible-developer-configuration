# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:/usr/local/bin:/opt/jmeter/bin:/opt/k9s:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

setopt no_clobber
setopt no_bg_nice
setopt share_history
setopt extended_history
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt no_hist_verify
setopt prompt_subst
setopt hist_fcntl_lock
setopt always_to_end
unsetopt autocd beep notify
bindkey -e

PROMPT="%n@%m:%F{33}%5c%f "
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
HISTSIZE=99999999
SAVEHIST=99999999

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  docker
  docker-compose
  git
  mosh
  npm
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Run dpkg -L fzf | grep bindings to find key-bindings
source /usr/share/doc/fzf/examples/key-bindings.zsh

source <(kubectl completion zsh)

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias k="kubectl"
complete -F __start_kubectl k

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/$USER/.sdkman"
[[ -s "/home/$USER/.sdkman/bin/sdkman-init.sh" ]] && source "/home/$USER/.sdkman/bin/sdkman-init.sh"

