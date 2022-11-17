# install nix
curl -L https://nixos.org/nix/install --no-daemon | sh

# source nix
~/.nix-profile/etc/profile.d/nix.sh

# install packages 
  nix-env -iA \                                                                       
    nixpkgs.neovim \                                                                
    nixpkgs.zsh \                                                                   
    nixpkgs.google-chrome \                                                         
    nixpkgs.nitrogen \
    nixpkgs.i3 \                                                                    
    nixpkgs.polybar \                                                               
    nixpkgs.gh \                                                                    
    nixpkgs.bat \
    nixpkgs.powerline-fonts \
    nixpkgs.stow \
    nixpkgs.nerdfonts \
    nixpkgs.trash-cli

# stow packages
stow git 
stow zsh
stow nvim
stow polybar 
stow nitrogen 
stow i3

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells 

#use zsh as default shell 
sudo chsh -s $(which zsh) $USER 

# install antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote





