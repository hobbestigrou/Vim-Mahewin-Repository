#!/bin/sh

path_vim_mahewin_repository=$HOME/vim-mahewin-repository

function _check_user {
    local ROOT_UID=0

    if [ "$UID" -eq "$ROOT_UID" ]
    then
        echo "You don't must be root to execute this script"
        exit 0
    fi

}

function _build_command_t {
    cd $HOME/.vim/ruby/command-t
    ruby extconf.rb
    echo "Build command-t plugin"
    make clean
    make
    cd $HOME/Conf
}

function _install {
    echo "Thanks to use Vim-Mahewin-Repository"

    echo "Install vimrc from vim-mahewin-repository in your home"
    cp $path_vim_mahewin_repository/vimrc $HOME/.vimrc

    echo "Delete actually vim directory"
    rm -rf $HOME/.vim
    echo "Install vim directory from vim-mahewin-repository in your home"
    cp -r $path_vim_mahewin_repository/vim $HOME/.vim

    _build_command_t
}

_check_user
_install
