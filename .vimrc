" Use vim-plug to manage plugins
call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
call plug#end()

" Implied by plug#end()
"filetype plugin indent on
"syntax enable

let mapleader = " "

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
set encoding=utf-8

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Per-filetype tab settings
autocmd FileType html setlocal sw=2 sts=2
autocmd FileType php setlocal sw=2 sts=2

" Highlight trailing whitespace
match Todo /\s\+$/

" Octave syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

" make vim behave more like emacs
noremap <C-a> <Home>
noremap <C-e> <End>
noremap! <C-a> <Home>
noremap! <C-e> <End>
set cindent
set cinoptions=l1,(0,u0,j1
set ignorecase
set smartcase
set autochdir

" navigate splits more easily
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" improve the buffer experience
let g:airline#extensions#tabline#enabled = 1
set hidden
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>e :edit 
nnoremap <leader>d :bdelete<CR>

" make airline prettier
"let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
