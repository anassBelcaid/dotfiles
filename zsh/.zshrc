# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# configure Z initi
#
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"


# add in Powerlevel10k
# zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# add zsh syntax highlight
zinit light zsh-users/zsh-syntax-highlighting

#add zsh completions
zinit light zsh-users/zsh-completions

autoload -U compinit && compinit
zinit cdreplay -q

#auto suggestions
zinit light zsh-users/zsh-autosuggestions

#fzf tab
zinit light Aloxaf/fzf-tab

#git pluging from oh-my-zshr
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::vi-mode
# zinit snippet OMZP::kubectl
# zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

#binding
bindkey '^y' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

#History
HISTSIZE=5000
HISTFILE=~/.zsh_hisotory
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'


#shell integrations
eval "$(fzf --zsh)"

#zoxide
eval "$(zoxide init --cmd cd zsh)"


#aliases

# General alias
alias ls='ls --color'
alias vim='nvim'
alias e='nvim'
alias r='yazi'
alias pgoogle='ping google.com'
export EDITOR=nvim

# alias for latexmk
alias ltxLive='latexmk -pvc -pdf -interaction=batchmode -quiet'


# unlocking pacman 
alias unlockPac='sudo rm -rf /var/lib/pacman/db.lck'

# alias for leetcode pluging
alias leet='nvim leetcode.nvim'


# transmission alias
#{{{ transmission function
tsm-start(){ echo "Staring transmission daemon"; transmission-daemon}
tsm-add(){transmission-remote -a "$1"}
tsm-cli(){transmission-remote-cli}
tsm-list(){transmission-remote -l }
tsm-stop(){ echo "Stoping the daemon"; killall transmission-daemon}
tsm-rad(){ echo "delleting and removing torrent id "$1; transmission-remote -t $1 --remove-and-delete}
alias tsm='transmission-remote'
alias tstop='tsm-stop'
alias tstart='tsm-start'
alias tremc='tremc -X'

# new cli replacement
alias ls='exa'
alias cat='bat'

#Path 
#my personal scripts
export PATH=~/scripts/:$PATH

#Anaconda
export PATH=~/miniconda3/bin/:$PATH

# Cargo 
export PATH=~/.cargo/bin/:$PATH

#blog variable
export blog=~/github/anass/anassBelcaid.github.io


# function for fast file
#{{{ shortcut for editing key filees
cfg_vim(){ vim /home/anass/.config/nvim/init.lua}
cfg_shell(){vim ~/.zshrc}

#}}}
#

# useful doi to bib
# {{{ Latex tools
doi2bib ()
{
  echo >> "bibliography.bib";
  curl -s "http://api.crossref.org/works/$1/transform/application/x-bibtex" >> "bibliography.bib"
  echo >> "bibliography.bib"
}

#{{{ Jekyll: 
blog-serve(){ bundle exec jekyll serve --livereload}
#}}}
#
#{{{ Custom functions
change_brightness()
{
  echo $1 | sudo tee /sys/class/backlight/nvidia_0/brightness
}
#}}}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/anass/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/anass/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/anass/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/anass/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PYTHONPATH=.:

# Lines for rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# starship 
eval "$(starship init zsh)"

# Gpg agent
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
