#!/bin/sh

path_vim_mahewin_repository=$HOME/vim-mahewin-repository

function _check_user {
    local ROOT_UID=0

    if [ "$UID" -eq "$ROOT_UID" ]
    then
        echo "You must not be root"
        exit 0
    fi
}

_check_user

echo "Thanks to use Vim-Mahewin-Repository"

echo "Install vimrc"
cp $path_vim_mahewin_repository/vimrc $HOME/.vimrc

echo "Delete actually vim directory"
rm -rf $HOME/.vim
echo "Install vim directory from vim-mahewin-repository"
cp -r $path_vim_mahewin_repository/vim $HOME/.vim

