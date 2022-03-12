add-apt-repository ppa:jonathonf/vim
apt-get update

git clone https://github.com/merwane/dotfiles/.vimrc ./
git clone https://github.com/merwane/dotfiles/.tmux.conf ./
git clone https://github.com/merwane/dotfiles/.vim ./

apt install -y vim
apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/merwane/dotfiles/.zshrc ./
