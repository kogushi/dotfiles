"Load plugins
call plug#begin()

"colorschemes
Plug 'Rigellute/rigel'
"Plug 'nanotech/jellybeans.vim'
"Plug 'w0ng/vim-hybrid'
"Plug 'ulwlu/elly.vim'
"Plug 'altercation/vim-colors-solarized'

"Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"parentheses, pairs
Plug 'andymass/vim-matchup'

"Highlight
Plug 't9md/vim-quickhl'
Plug 'machakann/vim-highlightedyank'

"Indent Line
Plug 'Yggdroot/indentLine'

"Input helper
"Plug 'cohama/lexima.vim'

"folding
Plug 'pedrohdz/vim-yaml-folds'


"Keymapping helper
"Plug 'aiya000/vim-fmap'

"Filer : Fern & Fern-preview
Plug 'lambdalisue/fern.vim'
Plug 'yuki-yano/fern-preview.vim'
let g:fern#default_hidden=1

"Syntax
"RTX config
Plug 'okkiroxx/rtx.vim'

"Practical Vim
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-surround'

call plug#end()
