" vimrc - Vim Customization
" 2016 - Chris Collazo

call plug#begin('~/.vim/plugged')
    
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'guns/vim-clojure-static'
Plug 'luochen1990/rainbow'
Plug 'jceb/vim-orgmode'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'kongo2002/fsharp-vim'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" -----
" GENERAL VIM SETTINGS
" -----

" Make Space the leader key
let mapleader = "\<Space>"

" Space-o starts CtrlP
nnoremap <Leader>o :CtrlP<CR>

" Space-b starts CtrlPBuffer
nnoremap <Leader>b :CtrlPBuffer<CR>

" Space-m starts CtrlPMixed
nnoremap <Leader>m :CtrlPMixed<CR>

" Space-t splits window horizontally
nnoremap <Leader>t :vsplit<CR>

" Space-w closes all windows but current
nnoremap <Leader>w :only<CR>

" Space-d closes the current buffer
nnoremap <Leader>d :bd<CR>

" Remap keys for buffer switching
nnoremap <C-n> :bprevious<CR>
nnoremap <C-m> :bnext<CR>

" Allow switching buffers without writing first
set hidden

" Highlight current line
set cursorline

" Relative line numbers
set number
set relativenumber

" -----
" PATHOGEN SETTINGS
" -----

" Have Pathogen enable plugins, generate help tags
execute pathogen#infect()
Helptags


" -----
" CTRLP SETTINGS
" -----

" Set CtrlP to start in mixed recents/buffers/files mode
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'


" -----
" AIRLINE SETTINGS
" -----

" Enable Airline's Tabline, disable showing parent directories
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Enable Powerline fonts for proper Airline display
let g:airline_powerline_fonts = 1
set encoding=utf-8

" Make Airline appear all the time
set laststatus=2

" Set Airline theme
"AirlineTheme solarized
let g:airline_theme='solarized'
"let g:airline_theme='papercolor'

" Set the font with powerline additions
if has("gui_macvim") || has("win32") || has("win64")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
endif


" -----
" RAINBOW SETTINGS
" -----

let g:rainbow_active = 1


" -----
" SYNTAX AND THEME
" -----

" Language preferences
autocmd filetype fsharp     setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype haskell    setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype vim        setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype javascript setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype css        setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype html       setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype tex        setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype D          setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype rust       setlocal autoindent expandtab shiftwidth=4 tabstop=4
autocmd filetype clojure    setlocal autoindent expandtab shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.boot set filetype=clojure

" Set custom syntax theme
syntax on
filetype plugin indent on
set background=light
colorscheme solarized
"colorscheme PaperColor


" -----
" GVIM OPTIONS
" -----

if has("gui_running")

    " Add sources for Windows behavior files
    set nocompatible
    source $VIMRUNTIME/mswin.vim
    "behave mswin
    behave xterm

    " Hide the toolbar, menu bar, and scroll bars
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L

endif


" -----
" SYSTEM OPTIONS
" -----

" Turn off swap files for unsaved buffers
set noswapfile
