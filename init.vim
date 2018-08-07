call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vhdirk/vim-cmake'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
"color themes
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
set background=dark
colorscheme gruvbox
set number
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

set hlsearch
set incsearch

"=================================================
"INDENT GUIDES
let g:indent_guides_enable_on_vim_startup = 1
"=================================================
"HTML 5
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0
"=================================================
"Setting vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_asm_checkers             = ['asm', 'asm/0']
"=================================================
"Emmet
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_install_global = 0

autocmd FileType html,css EmmetInstall
"=================================================
"GCC config
map <F7>   :!g++ %<CR>
map <F6>   :!./a.out<CR>

"mappings 

map <C-n>  : NERDTreeToggle<CR>
map <C-s>  : w<CR>
nmap <F8>  : TagbarToggle<CR>
nmap <F10> : SyntasticCheck 0<CR>
map <F9>   : Tabularize /
