# DOTFILES

This is the dotfiles for my Arch Linux - Hyprland setup. This repository contains the different config files for Hyprland and other utilities.


## Setup Instructions

Follow the different steps below to setup my dotfiles:
## Clone the repository
```
git clone https://github.com/johanndominicthomas/dotfiles.git $HOME/dotfiles
```

## Enter the directory
```
cd $HOME/dotfiles
```

## Install Dependencies
Open dependencies.txt using a text editor and run the commands mentioned in it to install the dependencies.

## Remove and create backup for the default config files
```
chmod +x backup-configs.sh
```
Run it:
```
./backup-configs.sh
```

## Apply the Dotfiles
Install stow :
```
sudo pacman -S stow --needed
```

Create symlinks:
```
stow  .
```
The symlinks have been created successfully.

## Remove Dotfiles
To remove the applied Dotfiles:
```
cd $HOME/dotfiles
stow -D .
cd ..
rm -rf dotfiles
```
The Dotfiles have been removed.




