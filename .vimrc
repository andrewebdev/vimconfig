" Load pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

" Now for the normal stuff...
set nocompatible

" Make shift-insert work like in Xterm (and other mouse related configs)
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
set mousehide        " Hide the mouse when typing text

filetype plugin indent on
syntax on

" Status line
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ 

" Lines and columns
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Tabs and Spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set sta
set ai
set lbr

" Filetypes
map <f2> :FufFile<cr>
map <f3> :FufDir<cr>
map <f4> :FufLine<cr>
" f5 will check they python file for pep8
map <f6> a{% %}<esc>2bea<space>
map <f9> :NERDTree<cr>

" Buffers Navigation
map <C-RIGHT> <ESC>:bn<CR>
map <C-LEFT> <ESC>:bp<CR>

"File specific configs
" autocmd BufRead *.vpy set filetype=python
" autocmd BufRead *.zcml set filetype=xml
" autocmd BufRead *.pde set filetype=java
" autocmd BufRead *.fbml set filetype=xml

" Useful extra settings
" remap f1 and esc to be the same
noremap <f1> <esc>
noremap! <f1> <esc>
set history=700
set undolevels=700

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Set up some nice colors
set background=light

