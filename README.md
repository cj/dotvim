Installation:

    git clone git://github.com/cj/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
    sudo rm -r `gem env gemdir`/doc
    rvm docs generate-ri
