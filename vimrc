call plug#begin('~/.vim/plugged')

" Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'nathangrigg/vim-beancount'

call plug#end()

" Vimrc
let mapleader=" "
set number
set tabstop=4 shiftwidth=4 expandtab
imap jk <ESC>

" Stuff for color scheme
syntax enable
set background=dark
colorscheme solarized

" 80 char column marker
if exists('+colorcolumn')
        set colorcolumn=121
else
        au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Stuff for airline
set laststatus=2
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" Settings for focus mode (Goyo)
map <leader>f :Goyo<CR>
