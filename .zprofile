#!/bin/zsh

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[ -d $HOME/Downloads/Gits/squash ] && PATH="$HOME/bin/squash:$PATH"
