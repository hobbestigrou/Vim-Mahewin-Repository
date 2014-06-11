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


    if [ -e $HOME/.vimrc ]
    then
        read -p "You have vim configuration file, did you want use it with vim-mahewin-repository, say no if vim-mahewin-repository is already use(Y, y): "
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            mv $HOME/.vimrc $HOME/.vimrc.local
            ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
        else
            rm $HOME/.vimrc
            ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
        fi
    else
        ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
    fi
}


#Clone and exec vundle to install package
function install_vundle() {
    if [ ! -e "$HOME/.vim" ]
    then
        mkdir "$HOME/.vim"
    else
        read -p "You have a .vim directory, do you want remove the directory or not(Y, y): "
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
        if [ -e /etc/debian_version ]
        then
            echo "Install git"
            sudo apt-get install --force-yes --yes git-core
        else
            echo "You must install git"
        fi
    fi
}

install_mahewin_repository
install_vundle
