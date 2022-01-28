My (Mac)Vim configuration.

Uses these great plugins:
*  [vim-fireplace](https://github.com/tpope/vim-fireplace)
*  [vim-clojure-static](https://github.com/guns/vim-clojure-static)
*  [vim-colors-solorized](https://github.com/altercation/vim-colors-solarized)
*  [paredit](https://www.vim.org/scripts/script.php?script_id=3998)
*  [nerdtree](https://github.com/scrooloose/nerdtree)
*  [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
*  [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
*  [vim-javascript](https://github.com/pangloss/vim-javascript)
*  [python.vim](https://www.vim.org/scripts/script.php?script_id=974)
*  [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

### Installation
Backup then delete your existing ~/.vim and ~/.vimrc files.
```bash
git clone --recursive https://github.com/mtbkapp/kapp-vim.git 
ln -s <cloned-dir> ~/.vim
ln -s <cloned-dir>/.vimrc ~/.vimrc
```

#### vim-fireplace
vim-fireplace uses [cider-nrepl](https://docs.cider.mx/cider/basics/middleware_setup.html)
nrepl middleware to accomplish many of it's tasks. The way I set it up is with
Leiningen's `~/.lein/profiles.clj` file that looks like this:
```
{:repl {:plugins [[cider/cider-nrepl "0.27.2"]
                  [mx.cider/enrich-classpath "1.6.2"]]}}
```

#### [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
The YouCompleteMe plugin has modules that need to complied. See the it's README
for how to install on your system. This is what I did on mine:
```bash
# jdk installed previously 
# xcode command line tools installed previously
# nodejs installed previously 
brew install cmake
cd kapp-vim/pack/common/start/YouCompleteMe
git submodule update --init --recursive
python3 ./install.py --clangd-completer --ts-completer --java-completer
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
My config is free to use however you want. However, each plugin has its own
license, so read those.
