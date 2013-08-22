""""""""""""""""""""""""""""""""""""""""""""""""""
"To use ranger file manager
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ranger as vim file manager
function! Ranger()
    " Get a temp file name without creating it
    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
    " Launch ranger, passing it the temp file name
    silent exec '!RANGER_RETURN_FILE='.tmpfile.' ranger'
    " If the temp file has been written by ranger
    if filereadable(tmpfile)
        " Get the selected file name from the temp file
        let filetoedit = system('cat '.tmpfile)
        exec 'edit '.filetoedit
        call delete(tmpfile)
    endif
    redraw!
endfunction

nmap <leader>r :call Ranger()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Update the repository
""""""""""""""""""""""""""""""""""""""""""""""""""
"A function to update if necessary
function! Get_update()
    "Get the current path and change the directory to update the good
    "repository
    let l:current_path = expand("<sfile>:p:h")
    let l:path = '~/.vim-mahewin-repository'
    exec 'cd' l:path

    let l:last_local_commit = system('git rev-parse HEAD')
    let l:last_remote_comit = system('git ls-remote origin -h refs/heads/master |cut -f1')

    if l:last_local_commit != l:last_remote_comit
        echo  'Need to be updated, launches updated'
        :!git pull `git remote` `git rev-parse --abbrev-ref HEAD`
    endif

    exec 'cd' l:current_path
endfunction

:call Get_update()
