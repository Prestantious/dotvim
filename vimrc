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


" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
