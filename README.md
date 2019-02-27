# Instruction
First, clone the git repo and create .vimrc file.
```
cd ~/.vim
git clone git@github.com:karolBak/vimrc.git
echo "runtime vimrc/vimrc" > ~/.vimrc
```
Now, you have to install the Plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
And finally, install the plugins:
```
vim
:PlugInstall
```
Happy coding!
