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

" Enable Powerline fonts for proper Airline display
let g:airline_powerline_fonts = 1
set encoding=utf-8

" Make Airline appear all the time
set laststatus=2

" Set Airline theme
AirlineTheme solarized

" Set the font with powerline additions
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11


" -----
" RAINBOW SETTINGS
" -----

let g:rainbow_active = 1


" -----
" SYNTAX AND THEME
" -----

" JavaScript preferences
autocmd filetype javascript setlocal autoindent
autocmd filetype javascript setlocal expandtab
autocmd filetype javascript setlocal shiftwidth=4
autocmd filetype javascript setlocal tabstop=4

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
