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

# Install HomeBrew
brew install npm
npm install -g coffeelint

http://blog.remibergsma.com/2012/01/30/alt-key-aan-de-praat-in-osx-terminal/

# Add this to your .zshrc file
stty ixany
stty ixoff -ixon
stty stop undef
stty start undef
