#!/bin/bash

#Clone vim-mahewin-repository to install
function install_mahewin_repository() {
    if [[ "$(which ranger)" == "" ]]
    then
        echo "Warning ranger is not installed, so not possible to use <leader>r"
    fi

    check_vim
    check_git

    if [[ -e "$HOME/.vim-mahewin-repository" ]]
    then
        rm -rf "$HOME/.vim-mahewin-repository"
        if [[ $? -ne 0 ]]
        then
            echo "Can't remove the .vim-mahewin-repository directory"
            exit 1
        fi
    fi

    git clone https://github.com/hobbestigrou/Vim-Mahewin-Repository.git $HOME/.vim-mahewin-repository
    manage_vimrc_file
}

#Check if a vimrc file exist
function manage_vimrc_file() {
    if [[ -L "$HOME/.vimrc" ]]
    then
        rm $HOME/.vimrc
        if [[ $? -ne 0 ]]
        then
            echo "Can't remove the symbolic .vimrc link"
            exit 1
        fi
    fi

    if [[ -e "$HOME/.vimrc" ]]
    then
        read -p "You have vim configuration file, did you want use it with vim-mahewin-repository, say no if vim-mahewin-repository is already use(Y, y): "
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            mv $HOME/.vimrc $HOME/.vimrc.local
            if [[ $? -ne 0 ]]
            then
                echo "Can't rename the .vimrc file to .vimrc.local"
                exit 1
            fi

            ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
            if [[ $? -ne 0 ]]
            then
                echo "Can't make the .vimrc symbolic link"
                exit 1
            fi
        else
            rm $HOME/.vimrc
            if [[ $? -ne 0 ]]
            then
                echo "Can't remove the .vimrc file"
                exit 1
            fi

            ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
            if [[ $? -ne 0 ]]
            then
                echo "Can't make the .vimrc symbolic link"
                exit 1
            fi
        fi
    else
        ln -s $HOME/.vim-mahewin-repository/vimrc $HOME/.vimrc
        if [[ $? -ne 0 ]]
        then
            echo "Can't make the .vimrc symbolic link"
            exit 1
        fi
    fi
}

#Clone and exec vundle to install package
function install_vundle() {
    if [[ ! -e "$HOME/.vim" ]]
    then
        mkdir "$HOME/.vim"
        if [[ $? -ne 0 ]]
        then
            echo "Can't create the .vim directory"
            exit 1
        fi
    else
        read -p "You have a .vim directory, do you want remove the directory or not(Y, y): "
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            rm -rf "$HOME/.vim"
            if [[ $? -ne 0 ]]
            then
                echo "Can't remove the .vim directory"
                exit 1
            fi

            mkdir "$HOME/.vim"
            if [[ $? -ne 0 ]]
            then
                echo "Can't create the .vim directory"
                exit 1
            fi
        else
            if [[ -e "$HOME/.vim/bundle/Vundle.vim" ]]
            then
                rm -rf "$HOME/.vim/bundle/Vundle.vim"
                if [[ $? -ne 0 ]]
                then
                    echo "Can't remove the bundle directory"
                    exit 1
                fi
            fi
        fi
    fi

    echo "Install Vundle"
    git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
}

#To check if git is installed
function check_git() {
    if [[ "$(which git)" == "" ]]
    then
        if [[ -e "/etc/debian_version" ]]
        then
            echo "Install git"
            sudo apt-get install --force-yes --yes git-core
            if [[ $? -ne 0 ]]
            then
                echo "Can't install git"
                exit 1
            fi
        else
            echo "You must install git"
        fi
    fi
}

#To check if vim is installed
function check_vim() {
    if [[ "$(which vim)" == "" ]]
    then
        if [[ -e "/etc/debian_version" ]]
        then
            echo "Install vim"
            sudo apt-get install --force-yes --yes vim
            if [[ $? -ne 0 ]]
            then
                echo "Can't install vim"
                exit 1
            fi
        else
            echo "You must install vim"
        fi
    fi
}

install_mahewin_repository
install_vundle
