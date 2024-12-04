# functions
source $HOME/repos/cp-libs/util/ac_functions.sh

# 補完
autoload -U compinit
compinit

eval "$(starship init zsh)"
eval "$(sheldon source)"
