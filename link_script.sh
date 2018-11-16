#!/bin/bash

#this script creates symlinks from the dotfiles to the corresponding config files

#get the folder in which the dotfiles are stored (ie the current folder)
#DOTFOLDER=`pwd` 

echo 'vim configuration'
ln -sf $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

#echo 'bash configuration'
#ln -sf $DOTFOLDER/bash/bashrc $HOME/.bashrc
#ln -sf $DOTFOLDER/bash/aliases $HOME/.bash_aliases
#
#echo 'X11 configuration'
#ln -sf $DOTFOLDER/X11/Xresources $HOME/.Xresources
#
#echo 'i3 configuration'
#ln -sf $DOTFOLDER/i3/config $HOME/.config/i3/config
#ln -sf $DOTFOLDER/i3/scripts/ $HOME/.config/i3/
#
#echo 'polybar configuration'
#ln -sf $DOTFOLDER/polybar/config $HOME/.config/polybar/config
#
#echo 'custom scripts folder'
#ln -sf $DOTFOLDER/bin $HOME
#
#echo 'dunst configuration'
#ln -sf $DOTFOLDER/dunst/dunstrc $HOME/.config/dunst/dunstrc
#
#echo 'ranger configuration'
#ln -sf $DOTFOLDER/ranger $HOME/.config/
