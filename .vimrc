set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/emmet-vim' 
"Plugin 'preservim/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jnurmine/Zenburn'  "Colour Theme
Plugin 'ap/vim-css-color'
Plugin 'DougBeney/pickachu' 
call vundle#end()            " required
filetype plugin indent on    " required


colors zenburn "Load Zenburn
set number
syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>


inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>


set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

"colorscheme murphy         " Change a colorscheme.

packloadall		   "Load all packages

silent! helptags ALL	   "Load help files for all plugins


highlight Cursor guifg = white guibg = black
highlight iCursor guifg = white guibg = steelblue
