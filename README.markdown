# Installation instructions

1.  Remove your old VIM configuration(because it probably sucks):

        rm -rf ~/.vim && rm ~/.vimrc

2.  Clone the project into your VIM directory

        git clone git://github.com/ramon/vimfiles.git ~/.vim

3.  Install the submodules

        git submodule update --init

4.  Symlink the VIM configuration

        ln -s ~/.vim/vimrc ~/.vimrc

5.  Copy the config.vim sample

        cp ~/.vim/config.vim.example ~/.vim/config.vim


# More Details
  
Wiki: [wiki]
IRC: [irc]
Issues: [issues]


# Maintainers

* Ramon Soares - http://github.com/ramon
* Alisson Cavalcante Agiani - http://github.com/thelinuxlich


[wiki]: http://wiki.github.com/ramon/vimfiles/
[irc]: irc://irc.freenode.org/##ruby-br "Freenode@##ruby-br"
[issues]: http://github.com/ramon/vimfiles/issues
