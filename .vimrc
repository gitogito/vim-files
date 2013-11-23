set nocompatible
set cpoptions&
set cpoptions+=$
set hidden
set nobackup
set shortmess&
set shortmess+=I
set ruler
set laststatus=2
set history=1000
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set ignorecase
set incsearch
set nowrapscan
set hlsearch
set scrolloff=2
set lazyredraw
set nrformats-=octal
set diffopt&
set diffopt+=iwhite
set ambiwidth=double

" Align
let g:Align_xstrlen = 3         " for japanese string
let g:DrChipTopLvlMenu = ''     " remove 'DrChip' menu

nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-j> <C-^>
noremap <Space> @@

autocmd BufRead,BufNewFile *.ml,*.mli set filetype=ocp-indent
autocmd Filetype ocp-indent compiler ocaml
autocmd Filetype awk setlocal shiftwidth=4 expandtab
autocmd Filetype python setlocal shiftwidth=4 expandtab
autocmd BufRead,BufNewFile *.ino set filetype=cpp

" go to the last position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

filetype plugin indent on

if &t_Co > 2 || has("gui_running")
    syntax on
    colorscheme mydelek
endif
