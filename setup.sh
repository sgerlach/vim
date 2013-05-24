#!/usr/bin/env bash

mkdir -p ~/.vim/autoload ~/.vim/bundle
wget --no-check-certificate -O ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/kien/ctrlp.vim.git
mkdir -p ~/.vim/ftplugin
wget --no-check-certificate -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
