# Vim-config

### Dependencies for Debian-based 

```sh
sudo apt install yarn nodejs build-essential
``` 

Install Vim-Plug 

#### Vim

###### Unix

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


Now, in command mode in VIM, run below commands one by one

```sh
:PlugInstall
:CocInstall coc-clang
:CocCommand clangd.install
```
