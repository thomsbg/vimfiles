call pathogen#infect()
call pathogen#helptags()

" syntax on
" filetype plugin indent on
" colorscheme railscasts

let mapleader=","

" Unorganized
set nocompatible
set hidden
set encoding=utf-8
set backspace=indent,eol,start

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Shortcuts
inoremap jj <ESC>
nnoremap ; :
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" Split window shortcuts
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Indentation
set autoindent

" Line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" Autocompletion
set wildmenu
set wildmode=list:longest,list:full

" Backup / Undo
" set backupdir=~/.vim/backup
" set directory=~/.vim/backup
" set undodir=~/.vim/undo
" set undofile

" Visual indicators
set title
set number
set ruler
set list
set listchars=tab:▸\ ,eol:¬
" set relativenumber
set showcmd
set visualbell
set cursorline
set ttyfast
set laststatus=2
" set statusline=%t\ %y\ [%c,%l]\ %{fugitive#statusline()}\ %P
set scrolloff=3

" These config files are ruby
" au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Guardfile,config.ru} set ft=ruby

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Enable syntastic syntax checking
" let g:syntastic_enable_signs=1
" let g:syntastic_quiet_warnings=1

" Quick switching between buffers
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" Prevent the escape key from moving the cursor
inoremap <Esc> <Esc>`^

" Remember last location in file
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"     \| exe "normal g'\"" | endif
" endif
