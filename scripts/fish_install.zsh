# adding fish to the list of allowed shells
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
# changing the default shell to fish
chsh -s /opt/homebrew/bin/fish
fish_add_path /opt/homebrew/bin

# This command might not work -- install fisher, might need to run separately
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

