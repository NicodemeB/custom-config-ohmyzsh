sudo apt install git zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd .. 
rm -rf fonts

#FIXME - doest not work 
cp -r config/.oh-my-zsh ~/
cp config/.zshrc ~/

# FIXME - need to edit prompt + edit .zshrc -> path into it + bs @ end of file

source ~/.zshrc






