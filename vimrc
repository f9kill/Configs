" Compatibilidade com versões antigas.
set nocompatible

" Numera as linhas.
set number

" Colore as paravras.
syntax on

" Tipo do arquivo.
set encoding=utf-8

" Mostra comandos que não estão completos
set showcmd

" Identação do código.
filetype plugin indent on

" Define tamanho do Tab.
set tabstop=4 shiftwidth=4

" Substitui Tabs por spaço.
set expandtab

set backspace=indent,eol,start

" Configurações para busca.
set hlsearch
set incsearch
set ignorecase
set smartcase

" Os plugins serão gravados dentro deste diretório.
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

" Carrega o plugin quando iniciar o vim.
" autocmd VimEnter * NERDTree
