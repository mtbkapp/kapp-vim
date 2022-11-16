set number
set tabstop=2
set shiftwidth=2
set expandtab
set cc=80
set nowrap
set hlsearch
syntax enable
filetype plugin indent on

" paredit
let g:paredit_mode = 1

" https://shapeshed.com/vim-netrw/
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" vim-javascript
let g:jsx_ext_required = 0

" Colors for GUI 
if has('gui_running')
    colorscheme solarized
    set background=light
    set background=dark
    set guifont=Monaco:h16
endif

" run clojure tests with vim-fireplace
nmap cpt :Eval (clojure.test/run-tests *ns*)<cr>

" reload cloure namespace
map <Leader>r :Require<cr>
