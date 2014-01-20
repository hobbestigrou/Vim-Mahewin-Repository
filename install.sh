#!/bin/bash

#Clone vim-mahewin-repository to install
function install_mahewin_repository() {
    if [ "$(which ranger)" == "" ];
    then
        echo "Warning ranger is not installed, so not possible to us <leader>r"
    fi

    git clone https://github.com/hobbestigrou/Vim-Mahewin-Repository.git $HOME/.vim-mahewin-repository
    ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
}


#Clone and exec vundle to install package
function install_vundle() {
    if [ ! -e "$HOME/.vim" ]
    then
        mkdir "$HOME/.vim"
        git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    fi
    vim +BundleInstall +qall
}

if [ "$(which ranger)" == "" ];
then
        echo "Warning ranger is not installed, so not possible to us <leader> r"
fi

#install_mahewin_repository
#install_vundle
