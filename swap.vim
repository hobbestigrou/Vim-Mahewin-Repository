if !isdirectory($HOME . '/.vim/swap')
    silent call mkdir($HOME . '/.vim/swap', 'p')
endif

set directory=$HOME/.vim/swap


""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove swap file
""""""""""""""""""""""""""""""""""""""""""""""""""
"A function to remove all swap file
function! Delete_all_swap_file()
    let l:swap_file    = glob($HOME . '/.vim/swap/*', 1, 1)
    let l:current_file = $HOME . '/.vim/swap/' . expand("%p")

    for current_swap in l:swap_file
        if current_swap !~ l:current_file . '.sw*'
            silent call delete(current_swap)
        endif
    endfor
endfunction

command! DeleteAllSwapFile call Delete_all_swap_file()
