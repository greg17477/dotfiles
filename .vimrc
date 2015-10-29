" enable 256 colors
set t_Co=256

" enable line numers
"set number

" enable status bar
set laststatus=2

" enable syntax highlighting
syntax on

" search highlighting
set hlsearch

" search as characters are entered
set incsearch

" tabs are spaces
set expandtab

" number of visual spaces per TAB
set tabstop=2

" number of spaces in tab when editing
set softtabstop=2
set shiftwidth=2

" allow backspace delete
set backspace=indent,eol,start

" visual autocomplete for command menu
set wildmenu


" PaperColor Theme
set background=dark
colorscheme PaperColor


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager - End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" tabline always on
let g:airline#extensions#tabline#enabled = 1

" user powerline font symbols
let g:airline_powerline_fonts = 1
