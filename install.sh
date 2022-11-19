#!/bin/bash
# install packages

sudo pacman -S neovim\
	git\
	zsh\
	nitrogen\
	i3\
	polybar\
	github-cli\
	bat\
	powerline-fonts\
	stow\
	nerdfonts\
	trash-cli

# stow packages
stow git
stow zsh
stow nvim
stow polybar
stow nitrogen
stow i3


# use zsh as default shell
chsh -s $(which zsh) $USER

# install antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# packer install
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'



