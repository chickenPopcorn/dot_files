f [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
