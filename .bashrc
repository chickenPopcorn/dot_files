# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# support 256 color
export TERM="screen-256color"

umask 0077

PS1="\[\033[96m\]\u\[\033[m\]@\[\033[92m\]\h \A:\[\033[93;1m\]\W\[\033[m\]\$ "
#PS1="[\u@\h \A]\[\033[01;14m\]\W\[\033[0m\]"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=10000
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:pwd:exit:df:ls:ls *;ll"


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# GREP_COLOR codes
# Attrubutes:    Text Color:    Background:
# 0 reset all    30 black       40 black
# 1 bright       31 red         41 red
# 2 dim          32 green       42 green
# 4 underscore   33 yellow      43 yellow
# 5 blink        34 blue        44 blue
# 7 reverse      35 purple      45 purple
# 8 hidden       36 cyan        46 cyan
#                37 white       47 white
#
# Speaate with ";"
#

export GREP_COLOR="31;47"
export GREP_OPTIONS="--color=auto"

# some more ls aliases
alias ll='ls -alFhG'
alias la='ls -A'
alias l='ls -CF'
alias les='less -NM'
alias clic='ssh -X rx2119@clic.cs.columbia.edu'

# redefine a cmooand to add options
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'

# sublime command line tool
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# git completion
if [ -f ~/.git-completion.sh ]; then
  source ~/.git-completion.sh
fi

# export for python env
export PIP_REQUIRE_VIRTUALENV=false

# export PATH varible
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
