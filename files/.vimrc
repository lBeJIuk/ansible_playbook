set encoding=utf-8
set nocompatible              " required
call plug#begin('~/.vim/plugged')

"GENERAL"
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-repeat'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'dyng/ctrlsf.vim' " ctrlp like
    Plug 'vim-airline/vim-airline'
    Plug 'powerline/powerline'
    Plug 'bling/vim-bufferline'
    Plug 'easymotion/vim-easymotion'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'gcmt/wildfire.vim' " SELECTION
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-commentary'
    Plug 'godlygeek/tabular' "LESEN UBER
    Plug 'majutsushi/tagbar'
    Plug 'mileszs/ack.vim'
    Plug 'tpope/vim-sensible'
    Plug 'vim-scripts/LargeFile'
    Plug 'jlanzarotta/bufexplorer'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'Valloric/MatchTagAlways'
    Plug 'michaeljsmith/vim-indent-object'

    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"GENERAL"

"LINTING


" Hightlight NGINX conf
  Plug 'chr4/nginx.vim'
" Hightlight NGINX conf

call plug#end()


set background=dark
colorscheme hybrid_reverse
syntax enable
filetype plugin indent on    " required
set number

set clipboard=unnamedplus
set cursorline
let g:mapleader = ','
set tabpagemax=99

set ts=2 sw=2 et
let g:indent_guides_start_level = 2

set list
set listchars=tab:⇥\ ,trail:␣,eol:¬,nbsp:·
set listchars+=precedes:⟨,extends:⟩
set listchars+=space:·

:set includeexpr=substitute(v:fname,'\ ','_','g')


" sudosave
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"Change positions of string
  nnoremap <S-k> :m .-2<CR>==
  nnoremap <S-j> :m .+1<CR>==
"Change position of string

"Change view
  map <C-k> <C-w><Up>
  map <C-j> <C-w><Down>
  map <C-l> <C-w><Right>
  map <C-h> <C-w><Left>
"Change view

"Change position of Tab
  map <silent> <F3> :tabm - 1<CR>
  map <silent> <F4> :tabm + 1<CR>
"Change position of Tab

"Change tab
  nmap <M-Right> gt
  nmap <M-Left> gT
"Change tab

nmap <F2> :NERDTreeToggle<CR>
