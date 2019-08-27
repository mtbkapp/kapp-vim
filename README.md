My (Mac)Vim configuration.

Uses these great plugins:
*  [Pathogen](https://github.com/tpope/vim-pathogen)
*  [vim-fireplace](https://github.com/tpope/vim-fireplace)
*  [vim-clojure-static](https://github.com/guns/vim-clojure-static)
*  [darcula colors](https://github.com/blueshirts/darcula)
*  [vim-colors-solorized](https://github.com/altercation/vim-colors-solarized)
*  [vim-paredit](https://github.com/vim-scripts/paredit.vim)
*  [nerdtree](https://github.com/scrooloose/nerdtree)
*  [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
*  [ctrlp](https://github.com/kien/ctrlp.vim)

### Installation
Backup then delete your existing ~/.vim and ~/.vimrc files.
```bash
git clone --recursive https://github.com/mtbkapp/kapp-vim.git 
ln -s <cloned-dir> ~/.vim
ln -s <cloned-dir>/.vimrc ~/.vimrc
```

### Clojure Helpers
*  `Leader-r` to reload the current namespace from the file system
*  `cpt` to run tests in the current namespace


### Troubleshooting

#### Plugins are not loading

This project uses submodules. 
If you did not clone the project using `--recursive` then you need to manually update submodules.
```bash
cd ~/.vim
git submodule init
git submodule update
```

#### Plugins are out of date
```bash
cd ~/.vim
git submodule init
git submodule update
```

### License
Each plugin has its own license, so read those. 

