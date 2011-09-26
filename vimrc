call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

let mapleader=","

set nocompatible
set encoding=utf-8
set backspace=indent,eol,start
set title
set t_Co=256
set mouse=a
set hidden
set ignorecase
set smartcase
set incsearch
set nohlsearch
set laststatus=2
set statusline=%t\ %y\ [%c,%l]\ %{fugitive#statusline()}
set wildmode=list:longest,list:full
set scrolloff=3
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set number
set ruler
set listchars=tab:>-,trail:·
set list
set nowrap
set autoindent
set showcmd

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Quick switching between buffers
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" Prevent the escape key from moving the cursor
inoremap <Esc> <Esc>`^
