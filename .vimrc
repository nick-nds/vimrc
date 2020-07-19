set foldmethod=indent
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

"let Vundle manage Vundle, required
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'groenewege/vim-less' "scss syntax helper
Plugin 'nathanaelkane/vim-indent-guides' "Show indent guides
"Plugin 'nick-nds/vim-gutentags' "Managing Tag Files
"Plugin 'udovicchabant/vim-gutentags' "Managing Tag Files
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/emmet-vim' 
"Plugin 'preservim/nerdtree'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'ycm-core/YouCompleteMe'
"Plugin 'jnurmine/Zenburn'  "Colour Theme
Plugin 'morhetz/gruvbox'
"Plugin 'ap/vim-css-color'
Plugin 'DougBeney/pickachu' 
Plugin 'junegunn/fzf', {'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
filetype plugin indent on    " required

let g:indent_guides_enable_on_vim_startup = 1 "Enable indent guides by default

"colors zenburn "Load Zenburn
colorscheme gruvbox
set background=dark    " Setting gruvbox dark mode

nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Formatting selected code.
xmap <Leader>f  <Plug>(coc-format-selected)
nmap <Leader>f  <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction


set number relativenumber
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


"highlight Cursor guifg = white guibg = black
"highlight iCursor guifg = white guibg = steelblue
