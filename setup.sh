if ! command -v nvim &> /dev/null; then
  sudo apt-get install -y neovim
fi
mkdir ~/.config/nvim
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim

if ! command -v rg &> /dev/null; then
  sudo apt-get install -y ripgrep
fi

if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v go &> /dev/null; then
  sudo apt-get install -y golang
fi
if ! command -v pip3 &> /dev/null; then
  sudo apt-get install -y python3-pip
fi
pip3 install --upgrade msgpack
sudo  npm install -g neovim
pip3 install --upgrade  pynvim
gem install neovim
gem install ripper-tags
ripper-tags -R /src/github.com/shopify/shopify -f /src/github.com/shopify/shopify/tags

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
