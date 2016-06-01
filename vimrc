" vimrc - Vim Customization
" 2016 - Chris Collazo

" Plugins currently installed via Pathogen:
" ctrlp.vim
" vim-airline
" vim-airline-themes
" vim-colors-solarized

" Have Pathogen enable plugins, generate help tags
execute pathogen#infect()
Helptags

" Set CtrlP to start in mixed recents/buffers/files mode
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

" Enable Powerline fonts for proper Airline display
let g:airline_powerline_fonts = 1
set encoding=utf-8
" Make Airline appear all the time
set laststatus=2
" Set Airline theme
AirlineTheme solarized

" Set the font with powerline additions
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11

" Set custom syntax theme
syntax on
filetype plugin indent on
set background=dark
"set background=light
colorscheme solarized
