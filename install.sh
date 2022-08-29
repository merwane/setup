add-apt-repository ppa:jonathonf/vim
add-apt-repository ppa:deadsnakes/ppa
apt-get update

apt install python3.7
apt install -y vim
apt-get install -y zsh
apt-get install -y tmux

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://raw.github.com/merwane/dotfiles/master/.zshrc > .zshrc
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.vimrc > .vimrc
curl -fsSL https://raw.github.com/merwane/dotfiles/master/.tmux.conf > .tmux.conf

mkdir .vim
mkdir .vim/autoload

curl -fsSL https://raw.github.com/merwane/dotfiles/master/plug.vim > .vim/autoload/plug.vim

