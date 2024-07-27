

# Install Fish on Ubuntu
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

## Add fish to shells
echo /usr/bin/fish | sudo tee -a /etc/shells

## Change default shell
chsh -s /usr/bin/fish

## May need to install rust as well

