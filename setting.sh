#!/bin/bash

# alacitty
mkdir -p ~/.config/alacritty/
ln -s ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# nvim関連
mkdir -p ~/.config/nvim/plugged
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim -es -u init.vim -c "PlugInstall" -c "qa"


# fish関係
fish_path=$(which fish)

if ! grep -q "$fish_path" /etc/shells; then
  echo "$fish_path" | sudo tee -a /etc/shells
fi

chsh "$fish_path"

echo "get oh_my_fish"
curl -L http://get.oh-my.fish | fish

printf(""omf install bobthefish"を実行してね！\n");

rm ~/.config/fish/config.fish 
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish

echo "setting is all done!"
