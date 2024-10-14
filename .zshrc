# 設定
export PATH=$PATH:/opt/homebrew/bin
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export OPENSSL_LIB_DIR="/opt/homebrew/opt/openssl@3/lib"
export OPENSSL_INCLUDE_DIR="/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# functions
source $HOME/repos/cp-libs/util/ac_functions.sh

# 補完
autoload -U compinit
compinit

eval "$(starship init zsh)"
eval "$(sheldon source)"
