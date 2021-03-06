#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NORMAL='\033[0m'


sudo apt install git zsh

printf "${YELLOW}[INFO] - PLEASE TYPE 'exit' AFTER OHMYZSH HAS FINISHED TO INSTALL TO FINISH THE INSTALL ${NORMAL}\n" 
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd .. 
rm -rf fonts


sed -i 's/robbyrussell/agnoster/' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(\n\tgit\n\tnanoc\n\tz\n\tzsh-autosuggestions\n\t)/' ~/.zshrc
sed -i "s/prompt_segment blue black '%~'/prompt_segment blue black '%c'/" ~/.oh-my-zsh/themes/agnoster.zsh-theme

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

cd .. 
rm -rf custom-config-ohmyzsh

zsh -c "source ~/.zshrc"
zsh



