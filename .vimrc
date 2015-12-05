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

" Bundles:

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'DrSpatula/vim-buddy'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-haml'
NeoBundle 'slim-template/vim-slim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Settings -----------------------------------------

set hidden "closed buff hidden 

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch   "find the next match as we type the search
"set hlsearch    "hilight searches by default

set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points

"default indent settings
set shiftwidth=2
set softtabstop=2
set expandtab "replace tabs w/ spaces
set autoindent

" line numbers
set number
set relativenumber

"files, backup and swap
set backup
set backupdir=~/.vim/tmp "backup
set dir=~/.vim/tmp "swap

"status line
set laststatus=2 "always show status line
let g:airline_powerline_fonts = 1 "use powerline symbols with airline
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1

"ctrl-p
let g:ctrlp_show_hidden = 1

"color scheme
colo buddy "color scheme
hi Normal ctermbg=235

"syntastic
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

"syntastic recommended settings (remove after reading manual)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Key mappings -------------------------------------

let mapleader="'" "leader key

map <C-n> :NERDTreeToggle<CR>

"buffer switching
nmap <leader>l :bnext<RETURN> 
nmap <leader>h :bprevious<RETURN> 
nmap <leader>w :bp <BAR> bd #<RETURN>

inoremap ;; <ESC>

