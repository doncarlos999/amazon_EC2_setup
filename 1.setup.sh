sudo yum update
sudo yum install tmux zsh git htop
#pip install python-language-server tmuxp
cd
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
ln -s amazon_EC2_setup/.vimrc .
mkdir -p .config/nvim
ln -s ~/amazon_EC2_setup/init.vim .config/nvim/init.vim 
ln -s ~/amazon_EC2_setup/.tmux.conf .
touch ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
git clone https://github.com/zsh-users/zsh-autosuggestions
mkdir ~/.zsh
mv ~/zsh-autosuggestions ~/.zsh
mv ~/zsh-syntax-highlighting ~/.zsh
git config --global user.email "crjward@gmail.com"
git config --global user.name "doncarlos999"
wget https://nodejs.org/dist/v12.18.4/node-v12.18.4-linux-x64.tar.xz
mkdir ~/opt
tar xvf node-v12.18.4-linux-x64.tar.xz \
    --exclude CHANGELOG.md \
    --exclude LICENSE \
    --exclude README.md \
    --strip-components 1 \
    -C ~/opt
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

