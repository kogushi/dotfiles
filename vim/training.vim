" No cursor keys
let g:arrowWarning = "Use [h][j][k][l] to Move!!!"
fun! ShowWarning(message)
    echo a:message
endfun
nnoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>
