if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'DrSpatula/vim-buddy'
NeoBundle 'Shougo/vimproc.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Settings -----------------------------------------

set number
set relativenumber
set laststatus=2 "always show status line
let g:airline_powerline_fonts = 1 "use powerline symbols with airline
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
colo buddy "color scheme
hi Normal ctermbg=236

" Key mappings -------------------------------------

let mapleader="'" "leader key

map <C-n> :NERDTreeToggle<CR>

" buffer switching
nmap <leader>l :bnext<CR> "next
nmap <leader>h :bprevious<CR> "previous
nmap <leader>w :bp <BAR> bd #<CR> "close buffer and go to prev

