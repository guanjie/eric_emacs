# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git, autojump)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias py="ipython"

alias vim=open /Applications/VimR.app 
# alias python="ipython"
alias py="ipython"
alias cl="clear"
alias c="clear"
alias hist="history"
alias cd_analytics="cd /Users/guanjiehe/Documents/ts-code/tapsense/projects/downloadtracker/python/src/tapsense/analytics"
alias cd_python="cd /Users/guanjiehe/gocode/src/github.com/guanjie/pylia/python"
alias cd_eriche="cd /Users/guanjiehe/Documents/eric-he"
alias git_log="git log --oneline"
alias ll='ls -lah'
alias gg="git status -sb"
alias cd_ts="cd /Users/guanjiehe/Dropbox/TapSense_Data/ts-code/ts-code/ts-code/tapsense"
alias cd_fun_projects="cd Documents/eric-he/python/"
alias open_advertiser_data="open /Users/guanjiehe/Dropbox/TapSense/Advertisers/advertiser_data/"
alias open_contracts="open /Users/guanjiehe/Dropbox/TapSense/Advertisers/Contracts/"
alias open_audible_reports="open /Users/guanjiehe/Dropbox/Report/"
alias open_youtube_and_images="open /Users/guanjiehe/Documents/eric-he/youtube_and_images"
alias cd_youtube="cd /Users/guanjiehe/Documents/eric-he/youtube_and_images/youtube_videos"
alias td="vi /Users/guanjiehe/Dropbox/Humancool_Projects/TODO/todo.txt"
alias cheers="vi ~/Dropbox/Humancool_Projects/TODO/cheers.txt"
# alias vim="open -a MacVim"
alias wget="wget -c"
alias gs="git status"
alias gb="git branch"
alias ga="git add -A"
alias gi="git commit -m '增加'"
alias gl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias cd_keys="cd ~/Dropbox/EricTheMan/Keys"
alias ..="cd .."
alias subl="open -a sublime\ text\ 2"
alias cd_go="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools"
alias gd="git diff"
alias cd_mongodb="cd /usr/local/var/mongodb"
alias cd_now="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools/website_hello/mini_projects/"
alias cd_euler="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools/basic_hello/project_euler"
alias cd_hacking="cd /Users/guanjiehe/gocode/src/github.com/incremental_hacking_cycles"
alias cd_yundongyuan="cd /Users/guanjiehe/gocode/src/github.com/guanjie/yundongyuanbackend/Application/App/Controller"
alias cd_pyyundongyuan="cd /Users/guanjiehe/gocode/src/github.com/guanjie/pylia/yundongyuan"
alias cd_julia="cd /Users/guanjiehe/gocode/src/github.com/guanjie/pylia/julia"
alias cd_sms="cd /Users/guanjiehe/gocode/src/github.com/haxpax/gosms/dashboard"
alias cd_xcode="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools/basic_tools/iOS_hello/"
alias cd_rails="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools/rails_hello"
alias cd_desktop="cd /Users/guanjiehe/Desktop"
alias ta="task add"
alias t="task list"
alias tl="task list"
alias t="task list"
alias tcweek="task end.after:today-1wk completed"
alias tcw="task end.after:today-1wk completed"
alias tc="task end.after:yesterday completed"
alias e="emacsclient -t -a ''"
alias eb="emacsbare"
alias ec="emacsclient -c -n -a ''"
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias vim="e"

set -o vi
PYTHONPATH="/System/Library/Frameworks/Python.framework/Versions/2.7/lib/extra/PyMOTW-1.106:$PYTHONPATH"
export PYTHONPATH


ff()
{
    find . -name $1
}

showtime()
{
    while true; do clear; echo -e `date +%T`\\c; sleep 1; done
}


# GOPATH basic set up.
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export GOPATH=$HOME/gocode
export PATH=$PATH:$HOME/gocode/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export PROMPT="$PROMPT\$(git-radar --zsh --fetch) "
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

# eval "$(direnv hook $SHELL)"
