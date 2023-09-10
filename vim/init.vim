"Allow moving to buffer even the current is unsaved.
set hidden

"No backup files
set nobackup
set nowritebackup
set noswapfile

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set scrolloff=5
set number
"set number relativenumber
set cursorline
set nrformats-=octal
language message en


"Status line
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
set display+=lastline


" search config
set smartcase
set ignorecase
set hlsearch


" Plugins
source $HOME/dotfiles/vim/plugins.vim


" Colorscheme & highlight
source $HOME/dotfiles/vim/color.vim


" Filetype setting
source $HOME/dotfiles/vim/filetype.vim


" Keymappings
source $HOME/dotfiles/vim/keymapping.vim


" Japanese setting
source $HOME/dotfiles/vim/windows.vim


" gVim
source $HOME/dotfiles/vim/gvim.vim


" Vim Training
source $HOME/dotfiles/vim/training.vim
