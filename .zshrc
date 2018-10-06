#{{{  ZSH Variables
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "candy-kingdom" "kennethreitz")
ZSH_THEME_RANDOM_CANDIDATES=( "kennethreitz")
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
  git osx colorize git-prompt pyenv tmux battery zsh-autosuggestions
)

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
alias latexLive='latexmk -pvc -pdf -interaction=batchmode -quiet'
alias vim ='nvim'
#}}}
#{{{ Personal variables
# Exporting the new path
export PATH=~/.gem/ruby/2.5.0/bin:$PATH

#path for matlatb
export PATH=~/matlab2017/bin:$PATH
#python path
export PYTHONPATH=~/python/
export PATH=~/anaconda3/bin:$PATH

#disseration
export disseration=~/github/anass/dissertation
export blog=~/github/anass/anassBelcaid.github.io

# dev folder
export software=~/github/anass/software/
# export orcid id
export orcid=0000-0002-9796-5102

#for aur edition
#export VISUAL="vim"
alias vim='nvim'

# shortcut for editing key filees
cfg_vim(){ vim ~/.config/nvim/init.vim}
cfg_shell(){vim ~/.zshrc}


#{{{ pip:
#upgrading all the packages by pip
pip_upgrade(){pip list --outdated --format=freeze| grep -v '^\-e'|cut -d = -f 1| xargs -n1 sudo pip install -U --upgrade}
#}}}
# export vim as vim server
#}}
#{{{ transmission function
tsm-start(){ echo "Staring transmission daemon"; transmission-daemon}
tsm-add(){transmission-remote -a "#1"}
tsm-list(){transmission-remote -l }
tsm-stop(){ echo "Stoping the daemon"; killall transmission-daemon }
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
#{{{ Cloud Computing

#ensam server
export ensamClient=modec.ensam-umi.ac.ma
export ensamLocal=172.20.0.6

#}}}
#{{{ Jekyll: 
blog-serve(){ bundle exec jekyll serve}
#}}}
