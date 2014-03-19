#!/bin/bash

dotfile_dir=~/.dotfiles
bkup_dir=~/.dotfiles_bkup

if [ ! -d "$bkup_dir" ]; then
    echo -n "Creating $bkup_dir for backing up current dotfiles"
    mkdir -p "$bkup_dir"
fi  

for file in $dotfile_dir/*
do
    if [ -e ~/.${file##*/} ]; then
        mv ~/.${file##*/} $bkup_dir
        printf "Moving .${file##*/} to $bkup_dir\n"
    fi 
    ln -s $file ~/\.${file##*/}
    printf "\nCreating symlink from ${file##*/} to ~/.${file##*/}\n"
done 
