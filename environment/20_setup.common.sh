
# Haskell
export HASKELLPATH=~/.cabal/bin

# Export local path
export PATH=:$HASKELLPATH:$PATH

#rbenv
eval "$(rbenv init -)"


if [[ "$(type -P subl)" ]]; then
  # Set Editor Editor to sublime if it exists
  export EDITOR='subl -w'
else
  # Set Editor Editor to vim
  export EDITOR='vim'
fi

# Set colors in Command line to true
CLICOLOR=True
export CLICOLOR

# load tmuxp bash completion
tmuxp.bash