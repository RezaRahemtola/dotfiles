#! /bin/sh

rm -f ~/.gitconfig
ln -s $(pwd)/git/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s $(pwd)/git/.gitignore ~/.gitignore

rm -f ~/.config/Code/User/settings.json
ln -s $(pwd)/vscode/settings.json ~/.config/Code/User/settings.json
rm -f ~/.config/Code/User/keybindings.json
ln -s $(pwd)/vscode/keybindings.json ~/.config/Code/User/keybindings.json

rm -rf ~/.config/fish
ln -s $(pwd)/fish ~/.config/fish

rm -rf ~/.tmux.conf
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# We can't symlink this one (/home won't be mounted yet)
cp $(pwd)/xkb/us /usr/share/X11/xkb/symbols/us

# Install fonts and refresh font cache
cp -r $(pwd)/fonts/agave-nerd-font /usr/share/fonts/
fc-cache -fv

# Set time locale to have monday as first day of the week
localectl set-locale LC_TIME=en_DK.UTF-8
