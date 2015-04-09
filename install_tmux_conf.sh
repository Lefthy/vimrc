#!/bin/bash
if [ -f ~/.tmux.conf ] ; then
    cp ~/.tmux.conf ~/.tmux.conf_old
    rm ~/.tmux.conf
    echo "Your old .tmux.conf has been backuped to ~/.tmux.conf"
fi
#get directory where sh is located
DIR=`dirname $BASH_SOURCE[0]`
DIR=$(cd $DIR && pwd)
tmux_pwd="$DIR/.tmux.conf"
if [ ! -f $tmux_pwd ]; then
    echo "Error. tmux.conf could not be found!"
    exit
fi
ln -s $tmux_pwd ~/.tmux.conf
echo "Completed! Please edit ~/.tmux.conf as you desire." 
