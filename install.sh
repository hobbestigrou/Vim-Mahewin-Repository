#!/bin/bash

#Clone vim-mahewin-repository to install
function install_mahewin_repository() {
    if [ "$(which ranger)" == "" ]
    then
        echo "Warning ranger is not installed, so not possible to us <leader>r"
    fi

    check_git

    if [ -e "$HOME/.vim-mahewin-repository" ]
    then
        rm -rf "$HOME/.vim-mahewin-repository"
    fi

    git clone https://github.com/hobbestigrou/Vim-Mahewin-Repository.git $HOME/.vim-mahewin-repository
    ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
}


#Clone and exec vundle to install package
function install_vundle() {
    if [ ! -e "$HOME/.vim" ]
    then
        mkdir "$HOME/.vim"
    else
        read -p "You have a .vim directory, do you want remove or not(Y, y): "
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            rm -rf "$HOME/.vim"
            mkdir "$HOME/.vim"
        else
            if [ -e "$HOME/.vim/bundle/vundle" ]
            then
                rm -rf "$HOME/.vim/bundle/vundle"
            fi
        fi
    fi

    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    vim +BundleInstall +qall
}

#To check if git is installed
function check_git() {
    if [ "$(which git)" == "" ]
    then
        echo "Install git"
        sudo apt-get install --force-yes --yes git-core
    fi
}

install_mahewin_repository
install_vundle
