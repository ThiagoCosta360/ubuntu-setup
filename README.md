# QUICK SETUP FOR UBUNTU DEVELOPMENT ENVIRONMENT

<img src="https://image.flaticon.com/icons/png/512/888/888879.png" alt="logo ubuntu" width="50">

## Ubuntu update

```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
```

## Installing applications

### Vim

- Installation

```
sudo apt install vim
```

### Albert

//TODO: add a tradutor

- Get repository key

```
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
```

- Setup repository

```
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list

sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
```

- Installation

```
sudo apt update
sudo apt install albert
```

### Google Chrome

- Get repository key

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```

- Setup repository

```
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```

- Installation

```
sudo apt-get update
sudo apt-get install google-chrome-stable
```

### Spotify

- Setup repository

```
sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list.d/spotify.list"
```

- Get repository key

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
```

- Installation

```
sudo apt-get update
sudo apt-get install spotify-client
```

### Snap

- Installation

```
sudo apt install snapd
```

### Vlc

- Installation

```
sudo snap install vlc
```

- Install media codecs

```
sudo apt install ubuntu-restricted-extras

```

### NodeJs

- Installation

```
sudo apt install nodejs
```

### NPM

- Installation

```
sudo apt install npm
```

### Pip

Package installer for Python

- Installation

```
sudo apt-get -y install python3-pip
```

- Python libraries

```
pip install numpy
pip install pandas
```

### MongoDB

- Installation

```
sudo apt-get install mongodb
```

### Curl

- Installation

```
sudo apt install curl
```

### Install postgres

- Installation

```
sudo apt install postgresql postgresql-contrib
```

### Gitkraken

- Installation

```
sudo snap install gitkraken --classic
```

### Postman

- Installation

```
sudo snap install postman
```

### Gnome tweak

- Installation

```
sudo apt install gnome-tweak-tool
```

## Github

//TODO: verify if we have to setup every git project

Generate a new SSH key:

```
ssh-keygen -t rsa
```

Copy the following code on github ssh keys

```
cat ./.ssh/id_rsa.pub
```

Test generated key

```
ssh -T git@github.com
```

setup

```
git remote set-url origin git@github.com:usernameyour-repository.git
git remote set-url origin git@gist.githubcom:fa4413eb65aa703c569bda4699c6e05d.git
```

You should not be asked for a username or password. If it works, your SSH key is correctly configured.

## Clone repositories

```
git clone https://github.com/ThiagoCosta360/exercises ~/exercises
```

```
git clone https://github.com/ThiagoCosta360/portfolio ~/projects/portfolio
```

//TODO: git clone akiry

## Keybindings

```
  ~/.gconf/desktop/gnome/keybindings
```

## Shell

//TODO: use https://github.com/zsh-users/antigen to easily change theme and plugins
//TODO: create a dotfiles repository
//https://github.com/Powerlevel9k/powerlevel9k/wiki/Show-Off-Your-Config

Install zsh shell

```
sudo apt-get install zsh
```

Make your defaul shell

```
chsh -s &(which zsh)
```

Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Customization

In Preferences:
-choose cursor form I-Bean
-enable blink cursor
-use transparance background low

Repository that enable ctrl+t to search in terminal

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

#### Font

Installing a cool font

```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
mkdir ~/.fonts && cd ~/.fonts
unzip ~/Downloads/FiraCode.zip
```

#### Color Scheme

Install new set of colors for shell "option 131"

```
bash -c  "$(wget -qO- https://git.io/vQgMr)"
```

#### LSD

```
sudo snap install lsd
alias ls='lsd --group-dirs first'
```

#### bashtop

```
sudo snap install bashtop
alias top='bashtop'
```

Open shell preferences, set pencil dark as default perfil and FiraCode Nerd Font Regular as default font

####

### Theme Powerlevel10K

Clone Powerlevel theme for zsh

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Change .zshrc theme configuration

```
sudo vim ~/.zshrc
```

```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Open a new terminal and configure power level with the following options

```
(y) (y) (y) (n) (3)Rainbow (1)Unicode (2)24-hour-format (3)Slanted (3)Slanted (4)Slanted (1)One-line (2)Sparse (2)Many-icons (1)Concise (n) (3)Verbose
```

### Plugins

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

Change .zshrc plugins list

```
sudo vim ~/.zshrc
```

```
plugins=(git fast-syntax-highlighting zsh-autosuggestions zsh-completions)
```

1. Change theme to powerlevel10k
2. Update plugins list
3. Add alias
   1. ls='lsd --group-dirs first'
   2. top='bashtop'
   3.
   please='sudo \$(fc -ln -1)'
4. Code to select text of terminal using shift

## Visual Studio Code

```
sudo snap install --classic code
```

## Nautilus

Open preferences
-enable vision in lists
-show action that empty the trash
-in columns, check only size

## remove recents

go to Settings > Security & Privacy > Files & Applications and check "off"

//TODO: dowload and set wallpaper
