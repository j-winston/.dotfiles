# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# OK to perform console I/O before this point.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# From this point on, until zsh is fully initialized, console input won't work and
# console output may appear uncolored.


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt notify
bindkey -v



# New command
mkdircd(){ mkdir "$1" && cd "$1"  }

# Set default editor 
export VISUAL="nvim"

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/james/.zshrc'

autoload -Uz compinit
compinit


# Zsh-Z
zstyle ':completion:*' menu select 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Shut up
POWERLEVEL9K_INSTANT_PROMPT=off 

# Nix 
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi 

# Antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load 

export PATH=~/minecraft-launcher/src/minecraft-launcher:$PATH
export PATH=/lib/jvm/java-20-openjdk/bin

export EDITOR=/usr/bin/nvim

# Aliases
alias 'v'='nvim'
alias 'l'='ls -ahl'
alias 'ls'='ls -a --color'
alias 'd'='ls -dl */'
alias 'cat'='bat'
alias 'rm'='trash'
alias 'h'='cd'
alias 'c'='clear'
alias 'u'='cd ..'
alias 'b'='cd -'
alias 'temp'='liquidctl --vendor 0x1e71 status'
