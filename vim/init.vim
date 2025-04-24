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


" search config
set smartcase
set ignorecase
set hlsearch

"Status line
" plain vim only
if !has('nvim')
  set cmdheight=2
  set laststatus=2
  set statusline=%<%f\ %m\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
  set display+=lastline
end




" Plugins
" plain vim only
if !has('nvim')
  source $HOME/dotfiles/vim/plugins.vim
end


" Colorscheme & highlight
" plain vim only
if !has('nvim')
  source $HOME/dotfiles/vim/color.vim
end


" Filetype setting
source $HOME/dotfiles/vim/filetype.vim


" Keymappings
source $HOME/dotfiles/vim/keymapping.vim


" Japanese setting
source $HOME/dotfiles/vim/windows.vim


" gVim
" plain vim only
if !has('nvim')
  source $HOME/dotfiles/vim/gvim.vim
end


" Vim Training
source $HOME/dotfiles/vim/training.vim
