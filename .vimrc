""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" allow backspace delete
set backspace=indent,eol,start

set t_Co=256        " enable 256 colors
syntax on           " enable syntax highlighting

"set number         " enable line numers
set laststatus=2    " enable status bar

set hlsearch        " search highlighting
set incsearch       " search as characters are entered

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces

set wildmenu        " visual autocomplete for command menu

" set Theme: PaperColor
set background=dark
colorscheme PaperColor

" key binds/maps
nnoremap <F9>  :bp <CR>
nnoremap <F10> :bn <CR>

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

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

"Plugin 'bling/vim-bufferline'

Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'airblade/vim-gitgutter'

"Plugin 'chrisbra/changesPlugin'

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
