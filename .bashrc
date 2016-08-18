source ~/.bash_profile
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
alias sort='ls | sort -nr'
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
alias vim="open /Applications/VimR.app ."
alias wget="wget -c"
alias gs="git status"
alias gb="git branch"
alias gl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias cd_keys="cd ~/Dropbox/EricTheMan/Keys"
alias ..="cd .."
alias subl="open -a sublime\ text\ 2"
alias cd_go="cd /Users/guanjiehe/gocode/src/github.com/guanjie/erictools"
alias gd="git diff"
alias ga="git add -A"
alias gi="git commit -m '增加'"
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
alias ta="task add"
alias tl="task list"
alias tcweek="task end.after:today-1wk completed"
alias tc="task end.after:yesterday completed"

export PATH=/usr/local/php5/bin:$PATH
set -o vi
PYTHONPATH="/System/Library/Frameworks/Python.framework/Versions/2.7/lib/extra/PyMOTW-1.106:$PYTHONPATH"
export PYTHONPATH

export MONGO_URL=mongodb://user:pass@server.mongohq.com/db_name
export AWS_ACCESS_KEY_ID=AKIAJZKHMVXDPCKICOYQ
export AWS_SECRET_ACCESS_KEY=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
export PATH=$PATH:/Users/guanjiehe/.composer/vendor/bin
export PATH=/usr/local/bin/task:$PATH

export DOCKER_HOST=tcp://192.168.59.103:2375
export DOCKER_CERT_PATH=/Users/guanjiehe/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export PATH="/Applications/Julia-0.3.3.app/Contents/Resources/julia/bin:$PATH"

export PATH="$PATH:/usr/local/bin/elixir"


ff()
{
    find . -name $1
}

showtime()
{
    while true; do clear; echo -e `date +%T`\\c; sleep 1; done
}


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]$ts_machine_name\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:$ts_machine_name:\w\$ '
# fi
# unset color_prompt force_color_prompt
# 
# 
# # enable color support of ls and also add handy
# # aliases
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     #alias dir='dir --color=auto'
#     #alias vdir='vdir --color=auto'
# 
#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi
# 
# # Added for EC2 API and functions.
# export EC2_HOME=~/.ec2
# export PATH=$PATH:$EC2_HOME/bin
# export EC2_PRIVATE_KEY=`ls $EC2_HOME/*.pem`
# # export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
# 
# ##
# # Your previous /Users/guanjiehe/.bash_profile file was backed up as /Users/guanjiehe/.bash_profile.macports-saved_2014-03-07_at_15:36:19
# ##
# 
# # MacPorts Installer addition on 2014-03-07_at_15:36:19: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# # Finished adapting your PATH environment variable for use with MacPorts.
# 
# # GOPATH basic set up.
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
# export GOPATH=$HOME/gocode
# export PATH=$PATH:$HOME/gocode/bin
# 
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
