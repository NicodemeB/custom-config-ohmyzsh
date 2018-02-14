#!/usr/bin/env zsh

sudo apt install git zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd .. 
rm -rf fonts


sed -i 's/robbyrussell/agnoster/' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(\n\tgit\n\tnanoc\n\tz\n\t)/' ~/.zshrc
sed -i "s/prompt_segment blue black '%~'/prompt_segment blue black '%c'/" ~/.oh-my-zsh/themes/agnoster.zsh-theme

source ~/.zshrc




