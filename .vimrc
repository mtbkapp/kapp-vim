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

" nerd tree like directory listings
let g:netrw_liststyle=3

" vim-javascript
let g:jsx_ext_required = 0

" Colors for GUI 
if has('gui_running')
    colorscheme solarized
    set background=dark
    set guifont=Monaco:h16
endif

" run clojure tests with vim-fireplace
nmap cpt :Eval (clojure.test/run-tests *ns*)<cr>

" toggle nerdtree
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" reload cloure namespace
map <Leader>r :Require<cr>

