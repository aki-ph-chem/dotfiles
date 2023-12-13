syntax on
filetype plugin indent on
set autoindent
set expandtab

"Set Leader key ","(comma) 
let mapleader = ','

"tab = space x 4
set tabstop=4

" jj <- ESC 
inoremap <silent> jj <ESC>
set backspace=2
set number

"install plugin
call plug#begin()
Plug 'cohama/lexima.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ivechan/gtags.vim'
call plug#end()

"for GNU Global
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

"pluginを読み込む
packloadall
silent! helptags ALL

" ファイル名の補完
set wildmenu

"起動時にNERDTreeを起動
"autocmd VimEnter * NERDTree
"NtでNERDTreeをトグル
command Nt NERDTreeToggle
" nerdtreeで隠しファイルを表示
let NERDTreeShowHidden=1

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
",vd <- :Vd 
noremap <leader>vd :Vd<cr>

"; <- :
"noremap ; :
"save file by Ctrl + u
"<c-u> mean Ctrl + u
"<cr> mean Enter key
noremap <c-u> :w<cr>

"search file 'tag' recursively
set tags=tags;
