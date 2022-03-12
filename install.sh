add-apt-repository ppa:jonathonf/vim
apt-get update


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.zshrc > .zshrc
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.vimrc > .vimrc
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.tmux.conf > .tmux.conf
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.vim/autoload/plug.vim > .vim/autoload/plug.vim

apt install -y vim
apt-get install -y zsh
