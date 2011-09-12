call pathogen#infect()
call pathogen#helptags()

set t_Co=256
set mouse=a
set hidden
set nohlsearch
set statusline=%t\ %y\ [%c,%l]\ %{fugitive#statusline()}

set smartindent
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
inoremap <silent> <Esc> <Esc>`^

" Inserting blank lines
nmap ,o o<Esc>k
nmap ,O O<Esc>j
