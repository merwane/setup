### Install dependencies
```
sudo apt update
sudo apt install -y curl git vim
```

### Install zsh+ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Copy dotfiles 
```
cp .vimrc $HOME
cp .tmux.conf $HOME
cp .vim $HOME
```

### Install vim plugins (in vim)
```
:PlugInstall
```
