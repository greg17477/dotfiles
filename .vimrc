""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" allow backspace delete
set backspace=indent,eol,start

set t_Co=256        " enable 256 colors
syntax on           " enable syntax highlighting

set number          " enable line numers
set relativenumber  " cursor is always line 0
set laststatus=2    " enable status bar

set hlsearch        " search highlighting
set incsearch       " search as characters are entered

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces

set wildmenu        " visual autocomplete for command menu

set splitbelow      " open new split below the active one
set splitright      " open new split right to the active one

" set Theme: PaperColor
set background=dark
colorscheme PaperColor

" vim explorer nicer list
let g:netrw_liststyle=3
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings - End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'NLKNguyen/papercolor-theme'

Plugin 'bling/vim-airline'

Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager - End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline stuff - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" tabline always on
let g:airline#extensions#tabline#enabled = 1

" user powerline font symbols
let g:airline_powerline_fonts = 1
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline stuff - End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key binds/maps should be mapped at the end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" previous, next buffer
nnoremap <F9>  :bp <CR>
nnoremap <F10> :bn <CR>

" resize the selected window by +/-N lines
nnoremap <C-W><kPlus>  :resize +10 <CR>
nnoremap <C-W><kMinus> :resize -10 <CR>
