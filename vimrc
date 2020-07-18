syntax on

set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set noerrorbells
set smartindent
set rnu " relative line numbers
set nowrap
set smartcase
set incsearch

set colorcolumn=80

" don't want that staircase paste, can you blame me?
set pastetoggle=<F2>
set clipboard=unnamed

" remap because of the damn touchbar
inoremap jj <Esc>


" tell plug to do all of the installations
" run PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " concor of completion

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'vuciv/vim-bujo' "  Vim todo lists
Plug 'jremmen/vim-ripgrep'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'lyuts/vim-rtags' " good for c++
Plug 'tpope/vim-fugitive' "  git integration
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree' " visualize your vim undo history

Plug 'gruvbox-community/gruvbox' " colorscheme
Plug 'phanviet/vim-monokai-pro' " colorscheme
Plug 'vim-airline/vim-airline' " status tabline

Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

call plug#end()

set termguicolors
colorscheme gruvbox
" colorscheme monokai_pro
set background=dark

" allow rg to find your git root
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0 

" map the leader key as the space bar
let mapleader = " "

" setup for the file tree
let g:netrw_browse_split = 2
let g:netrw_banner = 0 " no help banner
let g:netrw_winsize = 25

"" disable warning for not having the newest vim
let g:coc_disable_startup_warning = 1

" nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR> " jump between windows
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR> " split two windows
nnoremap <Leader>ps :Rg<SPACE> " open project search: download rg

nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" GoTo code navigation.


" tabbing autocompletion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>""

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
