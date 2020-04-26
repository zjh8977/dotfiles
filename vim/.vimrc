"==============Basic Setting============

"<- set number on the left
set nu
set rnu

" set hight light of syntax
syntax on

" show the mode when typing
set showmode

" encode is UTF-8
set encoding=utf-8

" set indent
set autoindent
set smartindent
set expandtab

" set tab and visual+[>> | <<]
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set higlight in nowline
"set cursorline

" basci setting
set wrap
set showmatch
set nobackup

"==============I/N/V Setting=============

inoremap jj <esc>

"============== vim-plug ================

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Snippets in vim
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Initialize plugin system
call plug#end()
