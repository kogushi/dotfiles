"Each filetype's setting

"Fern & Fern-preview
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

"Plugins
augroup pluging
  autocmd!
  autocmd FileType plugin indent on
augroup END

"YAML
augroup yaml
  autocmd!
  autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  setlocal foldmethod=indent
  setlocal foldlevelstart=20
augroup END


