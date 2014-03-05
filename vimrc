filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'dantler/vim-alternate'
Bundle 'nanotech/jellybeans.vim'
Bundle 'airblade/vim-gitgutter'

let mapleader = ','

set nocompatible
colorscheme jellybeans
autocmd!
set nocp
syntax on
set history=50
set showmode
set showcmd
set ru
set wmnu
set wildmode=longest,list
set showmatch
set ls=2
set nobk
set tabstop=2
set shiftwidth=2
set autoindent
set cindent
set expandtab
set ignorecase
set smartcase
set incsearch
set hlsearch
set number
set undolevels=300
set nowrap
set title

:set tags=tags;/

:highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

set t_Co=256
"set t_Co=16
set enc=utf-8
set directory=/tmp
set mouse=a

filetype plugin indent on

autocmd FileType c,h setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType make setlocal shiftwidth=4 tabstop=4 noexpandtab
autocmd FileType mail setlocal nocindent textwidth=72 wrap

set backspace=2

set hidden

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

let g:netrw_liststyle=3

au BufWritePost .vimrc so ~/.vimrc
cmap w!! %!sudo tee > /dev/null %
noremap <silent><Leader>* :nohls<CR>
set colorcolumn=80

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

noremap <silent> <leader>T :tabnew<CR>
noremap <silent> <leader>l !php -l %<CR>

set statusline=
set statusline+=%0*\[%n]                       "buffernr
set statusline+=%0*\ %<%F\                     "File+path
set statusline+=%0*\ %=\ row:%l/%L\ (%03p%%)\  "Rownumber/total (%)
set statusline+=%0*\ col:%03c\                 "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\             "Modified?  Readonly? Top/bot.
