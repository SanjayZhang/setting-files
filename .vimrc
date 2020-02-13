" bundle header:
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'preservim/nerdcommenter'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/vim-auto-save'
" bundle header end

let mapleader=","
set number
set tabstop=4
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set autoindent
set shiftwidth=4
"filetype indent on      " load filetype-specific indent files
filetype plugin on
set wildmenu            " visual autocomplete for command menu
"set showmatch           " highlight matching [{()}]
set showcmd             " show command in bottom bar
set incsearch           " search as characters are entered
set hlsearch            " highlight matches 
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" jk is escape
inoremap jk <esc>
inoremap kj <esc>
inoremap JK <esc>
inoremap KJ <esc>

" 移动分割窗口
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
map <leader>w <C-W>W

" save session
nnoremap <leader>s :mksession<CR>
" edit vimrc and load vimrc bindings
nnoremap <leader>vr :vsp ~/.vimrc<CR>
nnoremap <leader>svr :source ~/.vimrc<CR>

nnoremap <leader>.  :w<CR>
nnoremap <leader>.. :wa<CR>
nnoremap <leader>vc :vsp ~/Documents/voc.txt<CR>
nnoremap <leader>qq :wqa<CR>
nnoremap <leader>fq :qa!<CR>

nnoremap <leader>1 :!

" Plugin: vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

"Plugin: any-flod
"syntax on
"autocmd Filetype * AnyFoldActivate               " activate for all filetypes
""set foldlevel=0  " close all folds
"" or
"set foldlevel=99 " Open all folds

"Plugin: indentLine
let g:indentLine_setColors = 0

"bundle tail:
call vundle#end()            " required
filetype plugin indent on    " required
"bundle tail end

set pastetoggle=<F2>

