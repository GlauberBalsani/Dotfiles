# /insall
# !/bin/bash


GITHUB_USER=GlauberBalsani
GITHUB_REPO=dotfiles
DIR="/.config/${GITHUB_REPO}"


download_dotfiles() {
	echo "$(date) PROCESSING: $@" >> $LOG
	git clone https://github.com/GlauberBalsani/dotfiles.git
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	pacman -S neovim 
	pacman -S vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


	

	
}

download_dotfiles

echo "Não esqueça de rodaro nvm install 18.12.1"
