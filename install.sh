echo "Installing software"
sudo dnf install vim zsh -y

echo "Installing oh-my-zsh"
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo usermod --shell $(which zsh) $USER

echo "Installing extensions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

echo "Installing additional font"
mkdir ~/.fonts && cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip
unzip Hack.zip
cd -

echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copying default files (you may need to change something)"
cp .p10k.zsh ~
cp .zshrc ~
cp .vimrc ~

vim +PlugInstall
