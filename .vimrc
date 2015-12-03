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

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Settings -----------------------------------------

set hidden "closed buff hidden 

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

