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
"GENERAL"
call plug#end()

nmap <F2> :NERDTreeToggle<CR>
