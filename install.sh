#!/bin/bash

#Clone and exec vundle to install package
function install_vundle() {
    if [ ! -e "$HOME/.vim" ]
    then
        mkdir "$HOME/.vim"
        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    fi
    vim +BundleInstall +qall
}

ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
install_vundle
