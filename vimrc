""""""""""""""""""""""""""""""""""""""""""
"Fichier de configuration pour vim
"Auteur: Natal Ngétal alias Hobbestigrou
"Site: http://erakis.im
"Version 0.1
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
"Activation de la coloration syntaxique
"et de l'indetation
""""""""""""""""""""""""""""""""""""""""""

set nocompatible
syntax on
colorscheme Mahewincs "Thème pour la coloration syntaxique
set ai "Pour l'autoindetation
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

""""""""""""""""""""""""""""""""""""""""""
"Activation de la numérotation de lignes
""""""""""""""""""""""""""""""""""""""""""

set number
set numberwidth=3

""""""""""""""""""""""""""""""""""""""""""
"Activation de la barre de status
""""""""""""""""""""""""""""""""""""""""""

set laststatus=2
set statusline=%t%m%r%h%w\ %{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\


"""""""""""""""""""""""""""""""""""""""""""
"Afficher les délimeteurs de bloc
"correspondant
"""""""""""""""""""""""""""""""""""""""""""

set showmatch

"""""""""""""""""""""""""""""""""""""""""""
"Différentes options pour la recherche
"""""""""""""""""""""""""""""""""""""""""""

set incsearch
set hlsearch
set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""
"Menu completion
"""""""""""""""""""""""""""""""""""""""""""

set wildmenu

"""""""""""""""""""""""""""""""""""""""""""
"Activer une confirmation lorsque l'on
"quitte sans avoir enregistrer le fichier
"""""""""""""""""""""""""""""""""""""""""""
set confirm

"""""""""""""""""""""""""""""""""""""""""""
"Afficher la contenant le curseur
"""""""""""""""""""""""""""""""""""""""""""

set cursorline

"""""""""""""""""""""""""""""""""""""""""""
"Activation de la souris en mode shell
"""""""""""""""""""""""""""""""""""""""""""
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour insérer la date du jour
""""""""""""""""""""""""""""""""""""""""""""""""""

imap \date  <C-R>=strftime("%d/%m/%Y")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Correction orthographique
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=fr

""""""""""""""""""""""""""""""""""""""""""""""""""
"Documentation
""""""""""""""""""""""""""""""""""""""""""""""""""
runtime ftplugin/man.vim
au BufReadPost *.pl   set keywordprg=perldoc\ -f
au BufReadPost *.pm   set keywordprg=perldoc\ -f
au BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping Perl
""""""""""""""""""""""""""""""""""""""""""""""""""
map ps :!perl -c %<CR>
map pd :!perl -d %<CR>

set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""
"Détecter les espaces en fin de ligne
""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set lcs:tab:>-,trail:X

""""""""""""""""""""""""""""""""""""""""""""""""""
" Détecter le type de fichier
""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype plugin on
