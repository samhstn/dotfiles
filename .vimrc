set nocompatible
filetype off

" let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'js': 1 }

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeClose', 'NERDTreeFocus', 'NERDTreeToggle'] }
Plugin 'scrooloose/syntastic'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on
syntax enable
colorscheme monokai
set number
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == "h" ? "tab h" : "h"
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Ridding of swp files
set nobackup
set nowritebackup

"Syntastic
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 0
let g:jsx_ext_required = 0 
let g:syntastic_error_symbol = '✗'
let g:syntastic_loc_list_height = 5
let g:syntastic_warning_symbol = '✗'
let g:syntastic_style_error_symbol = '∆'
let g:syntastic_style_warning_symbol = '∆'

let g:syntastic_html_checkers = []
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']

" Key remappings
cmap Q q!
