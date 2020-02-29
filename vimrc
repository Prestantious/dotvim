syntax on

" don't want that staircase paste, can you blame me?
set pastetoggle=<F2>
set clipboard=unnamed

" remap because of the damn touchbar
inoremap jj <Esc>

" yeah that's right, I use tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" set-up pathogen, this will help manage plugins and runtime file for vim
" this allows you to keep the files for each plugin together
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()
call pathogen#helptags()


" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
