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
    echo "Do you want install all plugin or one by one"
    read install_type

    if [ $install_type == 1 ];
    then
        echo "Install vimrc from vim-mahewin-repository in your home"
        cp $path_vim_mahewin_repository/vimrc $HOME/.vimrc

        echo "Delete actually vim directory"
        rm -rf $HOME/.vim
        echo "Install vim directory from vim-mahewin-repository in your home"
        cp -r $path_vim_mahewin_repository/vim $HOME/.vim

        _build_command_t
    else
        files=$path_vim_mahewin_repository/vim/plugin/*
        echo "Delete actually vim directory"
        rm -rf $HOME/.vim
        cp -r $path_vim_mahewin_repository/vim $HOME/.vim

        rm -rf $HOME/.vim/plugin
        mkdir $HOME/.vim/plugin

        for file in $files
        do
            echo "Do you wan't install $file"
            read install_plugin
            if [ $install_plugin == 1 ];
            then
                echo "Install $file"
                cp $file $HOME/.vim/plugin/
                if [ "$file" == "$path_vim_mahewin_repository/vim/plugin/command-t.vim" ];
                then
                    _build_command_t
                fi
            fi
        done
    fi
}

_check_user
_install
