#{{{  ZSH Variables
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="theunraveler"
# ZSH_THEME="random"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell"  "candy-kingdom" "kennethreitz")
#
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git  colorize git-prompt pyenv battery zsh-syntax-highlighting  
  vi-mode fzf
)

# autosuggestions style
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

#suggestions history
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#}}}
#{{{ Personal Alias 
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# latex compilation command
alias vim='nvim'
alias pgoogle='ping www.google.com'
alias g++='g++ -std=c++17 -Wall'
# latexmk {{{ #
alias ltxclean='latexmk -C'
alias ltxLive='latexmk -pvc -pdf -interaction=batchmode -quiet'
alias ltxpdf='latexmk -pdf'
# }}} latexmk #
export TZ="Africa/Casablanca"
export repo=~/github/anass
export attijari=Yt000193342
export EDITOR=nvim
alias unlockPac='sudo rm -rf /var/lib/pacman/db.lck'
alias cleanLeet='rm -Rf ~/.local/share/nvim/site/pack/packer/start/leetcode/data/*'


# top ten used commands
alias tstop='tsm-stop'
alias tstart='tsm-start'
alias tstat='tsm-cli'
alias up='cd ..'
alias workon='conda activate'
sys_update()
{
  conda deactivate
  pamac update
}
alias sysUpd="sys_update"
alias m='make'
alias r='ranger'
alias tw='timew'

##}}}
#}}}
#{{{ Personal variables
# Exporting the new path
# export PATH=/usr/bin/vendor_perl:$PATH
# export PATH=~/.local/bin/:$PATH
#path for matlatb
export PATH=~/scripts/:$PATH
#python path
# export PYTHONPATH=

#conda path
export PATH=~/miniconda3/bin/:$PATH

#disseration
export blog=~/github/anass/anassBelcaid.github.io

# dev folder
# export orcid id
export orcid=0000-0002-9796-5102


#for aur edition
#export VISUAL="vim"
alias vim='nvim'

##{{{ Keyring with gnome
#if [ -n "$DESKTOP_SESSION" ];then
#    eval $(gnome-keyring-daemon --start)
#    export SSH_AUTH_SOCK
#fi
#}}}

#{{{ Git
alias g='git'
#}}}
#{{{ Tasks
alias t='task'
alias today='t due:today'
alias RO='cd ~/teaching/ENSAS/operational_research'

#list a project
tproject()
{
  t project:$1 next
}
#}}}

#{{{ Brightness
alias setBrightness "xrandr --output DP-0 --brightness"
#}}}
#}}}
#{{{ shortcut for editing key filees
cfg_vim(){ vim /home/anass/.config/nvim/init.lua}
cfg_shell(){vim ~/.zshrc}

#}}}
#{{{ transmission function
tsm-start(){ echo "Staring transmission daemon"; transmission-daemon}
tsm-add(){transmission-remote -a "$1"}
tsm-cli(){transmission-remote-cli}
tsm-list(){transmission-remote -l }
tsm-stop(){ echo "Stoping the daemon"; killall transmission-daemon}
tsm-rad(){ echo "delleting and removing torrent id "$1; transmission-remote -t $1 --remove-and-delete}
alias tsm='transmission-remote'
#}}}
#{{{ pandoc functions
# convert from markdow to html
pdc-mark-html(){ pandoc $1 -f markdown -t html -s -o $2}
pdc-mark-tex(){ pandoc $1 -f markdown -t latex -s -o $2}
pdc-mark-pdf(){ pandoc $1 -s -o $2}
pdc-mark-docx(){pandoc $1 -s -o $2}
#}}}
# {{{ Latex tools
doi2bib ()
{
  echo >> "bibliography.bib";
  curl -s "http://api.crossref.org/works/$1/transform/application/x-bibtex" >> "bibliography.bib"
  echo >> "bibliography.bib"
}
# }}}
#{{{ Cloud Computing


#}}}
#{{{ Jekyll: 
blog-serve(){ bundle exec jekyll serve --livereload}
#}}}
#{{{ Custom variables
export academicmail=a.belcaid@edu.umi.ac.ma 

# variable for task d server
export TASKDDATA=/var/taskd

#}}}
#{{{ Conda setup 
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "~/miniconda3/etc/profile.d/conda.sh" ]; then
        . "~/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/anass/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#}}}
#{{{ Custom functions
change_brightness()
{
  echo $1 | sudo tee /sys/class/backlight/nvidia_0/brightness
}
#}}}
#{{{ fasd
alias v='f -e vim'
alias m='f -e mplayer'
#}}}
#{{{ Automatic ssh agent
if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi
#}}}
# ruby env {{{ #
eval "$(rbenv init -)"
# }}} ruby env #

# cargo
export PATH=~/.cargo/bin/:$PATH


# nvm for npm
# https://wiki.archlinux.org/title/Node.js
###-begin-leetcode-completions-###
#
# yargs command completion script
#
# Installation: leetcode completion >> ~/.zshrc
#    or leetcode completion >> ~/.zsh_profile on OSX.
#
_leetcode_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" leetcode --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _leetcode_yargs_completions leetcode
###-end-leetcode-completions-###

## zsh-z
zstyle ':completion:*' menu select
source /Users/anassbelcaid/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## auto jump

  [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
