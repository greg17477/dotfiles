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
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'

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
" vim settings - Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" set Theme: PaperColor
set background=dark
colorscheme PaperColor

" allow backspace delete
set backspace=indent,eol,start

set t_Co=256        " enable 256 colors
syntax on           " enable syntax highlighting

set number          " enable line numers
set relativenumber  " cursor is always line 0
set laststatus=2    " enable status bar
set cursorline      " highlight current line

set hlsearch        " search highlighting
set incsearch       " search as characters are entered

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces

set wildmenu        " visual autocomplete for command menu

set splitbelow      " open new split below the active one
set splitright      " open new split right to the active one

" vim explorer nicer list
let g:netrw_liststyle=3

" Removes trailing spaces on save. Restores last cursor position and last search.
function! TrimWhiteSpace()
  let l:save_cursor = getpos('.')
  %s/\s\+$//e
  call setpos('.', l:save_cursor)
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings - End
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
nnoremap <silent> <F9>  :bp <CR>
nnoremap <silent> <F10> :bn <CR>

" resizing windows - ctrl+alt+key
noremap <silent> <C-S-k> :resize +10 <CR>
noremap <silent> <C-S-j> :resize -10 <CR>
noremap <silent> <C-S-l> :vertical resize +10 <CR>
noremap <silent> <C-S-h> :vertical resize -10 <CR>

" toggle 'paste' mode to paste from clipboard and preserve text formatting
noremap <silent> <Insert> :set paste! <CR>
noremap <silent> <Del>    :noh <CR>
