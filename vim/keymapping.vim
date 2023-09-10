"Keymappings

"Using space as <Leader> <LocalLeader>
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
nnoremap <Space> <nop>


"Disable search highlight by ESCx2
nnoremap <ESC><ESC> :nohl<CR>


"Following is set in japanese.vim
"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>


"
"Plugin settings
"

"quickhl
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
nmap <Space>M <Plug>(quickhl-manual-reset)

"Fern
nnoremap <silent> <Leader>e :<C-u>Fern .<CR>
