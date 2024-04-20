syntax on
filetype plugin indent on
set autoindent
set expandtab

" Set Leader key ","(comma) 
let mapleader = ','

" tab = space x 4
set tabstop=4

" jj <- ESC 
inoremap <silent> jj <ESC>
set backspace=2
set number

" color scheme
colorscheme desert
" transparent background
highlight Normal ctermbg=none
highlight NoText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

" install plugin by Vim Plug 
call plug#begin()
Plug 'cohama/lexima.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ivechan/gtags.vim'
call plug#end()

" for GNU Global
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
map <C-p> :cp<CR>

" airline config
let g:airline#extensions#tabline#enabled = 1 "show tabline
"let g:airline_powerline_fonts = 1

" load plugins
packloadall
silent! helptags ALL

" completion of file name
set wildmenu

" About Fern
" j,k : cursor Up/Down 
" l/h: open directory/ clse directory
" Ctrl + m: open file
" Ctrl + h: move to parent direcotry
" Enter: open file
"
" Fern config
" toggle Fern by Ctrl + n
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
" set font as nerdfont
let g:fern#renderer = 'nerdfont'
" show hidden file
let g:fern#default_hidden=1

" resize window
" +10 horizontal
command Ri resize +10
noremap <leader>ri :Ri<cr>

" -10 horizontal
command Rd resize -10
noremap <leader>rd :Rd<cr>

" +10 vertical 
command Vi vertical resize +10
",vi <- :Vi 
noremap <leader>vi :Vi<cr>

" -10 vertical 
command Vd vertical resize -10
" ,vd <- :Vd 
noremap <leader>vd :Vd<cr>

" ; <- :
" noremap ; :
" save file by Ctrl + u
" <c-u> mean Ctrl + u
" <cr> mean Enter key
noremap <c-u> :w<cr>

" search file 'tag' recursively
set tags=tags;

