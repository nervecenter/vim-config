" vimrc - Vim Customization
" 2016 - Chris Collazo

" Plugins currently installed via Pathogen:
" ctrlp.vim
" vim-airline
" vim-airline-themes
" vim-colors-solarized
" vim-clojure-static
" rainbow
" vim-orgmode
" nerdcommenter
" vim-fugitive
" ack.vim
" vim-fsharp
" syntastic


" -----
" COMMON KEYMAPS TO LEADER
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


" -----
" PATHOGEN SETTINGS
" -----

" Have Pathogen enable plugins, generate help tags
execute pathogen#infect()
Helptags


" -----
" POWERLINE SETTINGS
" -----

" Set CtrlP to start in mixed recents/buffers/files mode
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

" Enable Airline's Tabline, disable showing parent directories
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Remap keys for buffer switching
nnoremap <C-n> :bprevious<CR>
nnoremap <C-m> :bnext<CR>

" Allow switching buffers without writing first
set hidden

" Enable Powerline fonts for proper Airline display
let g:airline_powerline_fonts = 1
set encoding=utf-8

" Make Airline appear all the time
set laststatus=2

" Set Airline theme
AirlineTheme solarized

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

" Vim preferences
autocmd filetype vim setlocal autoindent
autocmd filetype vim setlocal expandtab
autocmd filetype vim setlocal shiftwidth=4
autocmd filetype vim setlocal tabstop=4

" JavaScript preferences
autocmd filetype javascript setlocal autoindent
autocmd filetype javascript setlocal expandtab
autocmd filetype javascript setlocal shiftwidth=4
autocmd filetype javascript setlocal tabstop=4

" CSS preferences
autocmd filetype css setlocal autoindent
autocmd filetype css setlocal expandtab
autocmd filetype css setlocal shiftwidth=4
autocmd filetype css setlocal tabstop=4

" HTML preferences
autocmd filetype html setlocal autoindent
autocmd filetype html setlocal expandtab
autocmd filetype html setlocal shiftwidth=4
autocmd filetype html setlocal tabstop=4

" LaTeX preferences
autocmd filetype tex setlocal autoindent
autocmd filetype tex setlocal expandtab
autocmd filetype tex setlocal shiftwidth=4
autocmd filetype tex setlocal tabstop=4

" D preferences
autocmd filetype D setlocal autoindent
autocmd filetype D setlocal expandtab
autocmd filetype D setlocal shiftwidth=4
autocmd filetype D setlocal tabstop=4

" Clojure preferences
autocmd filetype clojure setlocal autoindent
autocmd filetype clojure setlocal expandtab
autocmd filetype clojure setlocal shiftwidth=2
autocmd filetype clojure setlocal tabstop=2
au BufNewFile,BufRead *.boot set filetype=clojure

" Set custom syntax theme
syntax on
filetype plugin indent on
set background=dark
"set background=light
colorscheme solarized


" -----
" GVIM OPTIONS
" -----

if has("gui_running")

    " Add sources for Windows behavior files
    set nocompatible
    source $VIMRUNTIME/mswin.vim
    "behave mswin
    behave xterm

    " Hide the toolbar, menu bar, and right hand scroll bar
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r

endif


" -----
" SYSTEM OPTIONS
" -----

" Turn off swap files for unsaved buffers
set noswapfile
