" Vundle start setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'

" Vundle end setup
call vundle#end()            " required
filetype plugin indent on    " required

" Vimrc
let mapleader=" "
set number
set tabstop=8 shiftwidth=8 expandtab
imap jk <ESC>

" Stuff for color scheme
syntax enable
set background=dark
colorscheme solarized

" Stuff for airline
set laststatus=2
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" Settings for focus mode (Goyo)
map <leader>f :Goyo<CR>
