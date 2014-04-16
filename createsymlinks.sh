#!/bin/bash

dotfile_dir=~/dotfiles
bkup_dir=~/.dotfiles_bkup
no_symlink="README.md LICENSE createsymlinks.sh" #files that should not be symlinked

if [ ! -d "$bkup_dir" ]; then
    echo -n "Creating $bkup_dir for backing up current dotfiles"
    mkdir -p "$bkup_dir"
fi  

for file in $dotfile_dir/*
do

#check if the file is not in the no_symlink list
    if [[ $no_symlink != *${file##*/}* ]]; then

#check if dotfile or symlink already exist and backs it up if it does
        if [ -e ~/.${file##*/} ] || [ -h ~/.${file##*/} ]; then
            mv ~/.${file##*/} $bkup_dir
            printf "\nMoving .${file##*/} to $bkup_dir\n"
        fi

        ln -s $file ~/\.${file##*/}
        printf "\nCreating symlink from ${file##*/} to ~/.${file##*/}\n"
    fi 
done 
