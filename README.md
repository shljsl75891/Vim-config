# Vim-config

VIM Setup for C++ -> IDE like experience
![image](https://user-images.githubusercontent.com/56100355/181486687-20441e23-9d14-4594-a814-a08af279cfe9.png)


### Dependencies for Debian-based 
Just copy paste in terminal

```sh
sudo apt install yarn nodejs build-essential curl
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

### For Un-Interactive questions
Press F5, for executing problem with input stored in in.txt file in same directory
### For Interactive questions
Press F6, for executing problem with custom run time input 
