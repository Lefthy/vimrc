#!/bin/bash
cp .vim/ .vimrc ~/ -R
echo "Completed! Please run 'vim +PluginInstall +qall' to install vim plugins."
