call plug#begin('~/.vim/plugged')

" Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'nathangrigg/vim-beancount'
Plug 'derekwyatt/vim-scala'
Plug 'rust-lang/rust.vim'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'leafgarland/typescript-vim'

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

" Stuff for airline
set laststatus=2
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" Settings for focus mode (Goyo)
"map <leader>f :Goyo <bar> highlight StatusLineNC ctermfg=none <CR>
map <leader>f :Goyo <CR>

" Auto format rust
let g:rustfmt_autosave = 1

" Basic synstastic stuff
let g:syntastic_rust_checkers = ['rustc']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" 80 char column marker
"if exists('+colorcolumn')
        "set colorcolumn=121
"else
        "au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif
