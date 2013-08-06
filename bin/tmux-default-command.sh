#!/usr/bin/env bash

# from https://gist.github.com/natlownes/4949384

command_exists () {
  type "$1" &> /dev/null ;
}

system_name="`uname -s`"

if [ "$system_name" == "Darwin" ]
then
  if  command_exists reattach-to-user-namespace
  then
    reattach-to-user-namespace -l "$SHELL"
  else
    echo "reattach-to-user-namespace not found \
      $system_name clipboard will not work \
      you can: brew install reattach-to-user-namespace"
    $SHELL
  fi
else
  $SHELL -l
fi

source "${PYTHON_PACKAGES}/powerline/bindings/tmux/powerline.conf"