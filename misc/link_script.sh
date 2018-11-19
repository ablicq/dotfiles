#!/bin/bash

# this script creates symlinks from the dotfiles to the corresponding config files

# get the folder in which the dotfiles are stored (ie the current folder)
# NEEDS TO BE EXECUTED FROM THE .dofiles FOLDER
DOTFOLDER=`pwd`

echo 'vim configuration'
ln -sf $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

echo 'bash configuration'
ln -sf $DOTFOLDER/bash/bashrc $HOME/.bashrc
#ln -sf $DOTFOLDER/bash/aliases $HOME/.bash_aliases

echo 'X11 configuration'
ln -sf $DOTFOLDER/X11/Xresources $HOME/.Xresources
ln -sf $DOTFOLDER/X11/Xmodmap $HOME/.Xmodmap

echo 'i3 configuration'
ln -sf $DOTFOLDER/i3/config $HOME/.config/i3/config
#ln -sf $DOTFOLDER/i3/scripts/ $HOME/.config/i3/

echo 'polybar configuration'
# this is a folder
ln -sf $DOTFOLDER/polybar/config $HOME/.config/polybar/

echo 'custom scripts folder'

for f in $DOTFOLDER/bin/* 
do
	if [ -f $f]
	then
		ln -sf $f "$HOME/.bin/$(basename $f)"
	else
		ln -sf $f $HOME/.bin/
	fi
done

#echo 'dunst configuration'
#ln -sf $DOTFOLDER/dunst/dunstrc $HOME/.config/dunst/dunstrc

#echo 'ranger configuration'
#ln -sf $DOTFOLDER/ranger $HOME/.config/

echo 'termite configuration'
ln -sf $DOTFOLDER/termite/config $HOME/.config/termite/config

echo 'rofi themes'
ln -sf $DOTFOLDER/rofi/themes $HOME/.config/rofi
