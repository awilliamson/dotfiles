#!/bin/bash
FILES="bashrc Xprofile Xresources bin i3 config/nvim config/fish config/conky config/compton.conf"

mkdir -p ~/dotfiles_old
cd ~/dotfiles

for FILE in $FILES; do
	if [ -e ~/.$FILE ]; then
		mv ~/.$FILE ~/dotfiles_old
	fi
	ln -s ~/dotfiles/$FILE ~/.$FILE
done
