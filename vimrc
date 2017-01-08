" Plugins
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'ervandew/supertab'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tpope/vim-fugitive'
" Plugin 'junegunn/goyo.vim'
" Plugin 'nathangrigg/vim-beancount'

" Vimrc
let mapleader=" "
set number
set tabstop=4 shiftwidth=4 expandtab
imap jk <ESC>

" " Stuff for color scheme
" syntax enable
" set background=dark
" colorscheme solarized
" 
" " 80 char column
" if exists('+colorcolumn')
"         set colorcolumn=121
" else
"         au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif
" 
" " Stuff for airline
" set laststatus=2
" let g:airline_theme='solarized'
" let g:airline_powerline_fonts = 1
" 
" " Settings for focus mode (Goyo)
" map <leader>f :Goyo<CR>
