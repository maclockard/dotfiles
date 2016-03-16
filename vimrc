" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'

" Vundle end setup
call vundle#end()            " required
filetype plugin indent on    " required

" Vimrc
set number
syntax enable
set background=dark
colorscheme solarized
set tabstop=8 shiftwidth=8 expandtab
let mapleader = " "
