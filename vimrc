set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "**/*.pyc"
  \ -g ""'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'wakatime/vim-wakatime'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" General
set laststatus=2
set hidden
set noswapfile
set number
set backspace=indent,eol,start
set so=7
set tags=./tags,tags;$HOME

" Change directory locations
set backupdir=~/.vim/backup-files//
set directory=~/.vim/swap-files//
set undodir=~/.vim/undo-files//

" indents
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set nocindent
set expandtab

" Searching
set incsearch
set hlsearch

" Key mappings
let mapleader = ","
map <Leader>t :tabnew<Return>
map <Leader>e :NERDTree<Return>
map <Leader>E :NERDTree %<Return>
map <Leader><Space> :nohlsearch<Return>

" Moving around splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap jk <Esc>