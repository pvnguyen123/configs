set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles
Plugin 'kien/ctrlp.vim'
Plugin 'slim-template/vim-slim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
let mapleader=" "
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set incsearch 
set wrap
set linebreak
nnoremap <Leader>ww :w<CR>
nnoremap <Leader>rl :source ~/.vimrc<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader><Tab> <C-W>w
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nmap <Leader>s <Plug>(easymotion-prefix)
nmap <Leader>tt :TagbarToggle<CR>
nmap <Leader>cd :cd %:p:h<CR>:<CR>
nnoremap gp `[v`]

let g:tagbar_left=1
let g:airline#extensions#tabline#fnamemod = ':t'
 
"* enable/disable enhanced tabline. >
"let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
 
" enable/disable displaying tab number in tabs mode. >
" let g:airline#extensions#tabline#show_tab_nr = 1
 
" enable/disable displaying tab type (far right)
"  let g:airline#extensions#tabline#show_tab_type = 1
 
" enable/disable displaying index of the buffer.
 
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
 
"" unicode symbols
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'
"let g:airline_symbols.paste = 'ρ'
 
"let g:airline#extensions#tabline#left_sep = '⮀'
"let g:airline#extensions#tabline#left_alt_sep = '⮁'
"let g:airline#extensions#tabline#right_sep = '⮂'
"let g:airline#extensions#tabline#right_alt_sep = '⮃'
 
"Airline fugitive
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 10
 
let g:airline_powerline_fonts = 1
 
" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
 
let g:EasyMotion_startofline = 0 " keep  ursor column when JK motion
 
map <Leader>p :CtrlPCurWD<CR>
