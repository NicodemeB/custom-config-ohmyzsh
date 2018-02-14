sudo apt install git zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd .. 
rm -rf fonts

cp -r config/.oh-my-zsh ~/
if [ $1 -eq "-mac" ]
	then 
	cp config/.zshrc ~/
fi

source ~/.zshrc




