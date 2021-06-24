<H1> Thiago </h1>

# QUICK SETUP FOR UBUNTU DEVELOPMENT ENVIRONMENT

<img src="https://image.flaticon.com/icons/png/512/888/888879.png" alt="logo ubuntu" width="50">

## Ubuntu update

```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
```
## Installing applications

### Google Chrome

-   Get repository key

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```

-   Setup repository

```
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```

-   Installation

```
sudo apt-get update
sudo apt-get install google-chrome-stable
```

### Spotify

-   Installation

```
sudo snap install spotify
```

### Visual Studio Code

-   Installations

```
sudo snap install --classic code
```

 -  Install settings-sync
```
code --install-extension shan.code-settings-sync
```

 -  Sync configurarions manually
```
code .
```

### Gitkraken

-   Installation

```
sudo snap install gitkraken --classic
```


### Vim

-   Installation

```
sudo apt install vim
```

### Albert

-   Get repository key

```
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
```

-   Setup repository

```
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list

sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
```

-   Installation

```
sudo apt update
sudo apt install albert
```

 -   My translator

```
git clone git@github.com:ThiagoCosta360/albert-translator.git ~/Projects/albert-translator
make install --directory=~/Projects/personal/albert-translator/
```

-    Configuration
  > set Hotkey to 'Ctrl+Shift+Space 
  > uncheck 'show tray icon' option
  > set Theme to 'Numix'


### Vlc

-   Installation

```
sudo snap install vlc
```

-   Install media codecs

```
sudo apt install ubuntu-restricted-extras

```

### NodeJs

-   Installation

```
sudo apt install nodejs
```

### NPM

-   Installation

```
sudo apt install npm
```

### Pip

Package installer for Python

-   Installation

```
sudo apt-get -y install python3-pip
```

-   Python libraries

```
pip3 install numpy
pip3 install pandas
```

### MongoDB

-   Installation

```
sudo apt-get install mongodb
```

### Curl

-   Installation

```
sudo apt install curl
```

### Install postgres

-   Installation

```
sudo apt install postgresql postgresql-contrib
```

### Postman

-   Installation

```
sudo snap install postman
```

### Gnome tweak

-   Installation

```
sudo apt install gnome-tweak-tool
```

### Docker

-   Allow apt to use a repository over HTTPS:

```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

-   Get repository key

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

-   Set up the stable repository

```
sudo add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

-   Instalation

```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

-   Docker script

```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

-   Add to docker group

```
sudo usermod -aG docker thiago
```

## Docker compose

-   Install binary

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

-   Execute binary

```
sudo chmod +x /usr/local/bin/docker-compose
```

## Github sync with ssh

-   Generate a SSH key:

```
ssh-keygen -t rsa
```

-   Syncronization

> Copy the public key and paste on github
sudo apt install xclip
```
xclip -sel clip < ~/.ssh/id_rsa.pub
```

> You should not be asked for a username or password. If it works, your SSH key is correctly configured.

## Clone repositories

```
git clone https://github.com/ThiagoCosta360/exercises ~/exercises
```

```
git clone https://github.com/ThiagoCosta360/portfolio ~/projects/portfolio
```

-   Akiry-back ortvi

```
git clone git@bitbucket.org:akiry/docker-backend.git ~/Projects/akiry/ortvi/ortvi-back/docker
git clone git@bitbucket.org:akiry/core.git ~/Projects/akiry/ortvi/ortvi-back/core
git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/core/common
git clone git@bitbucket.org:akiry/auth.git ~/Projects/akiry/ortvi/ortvi-back/auth
git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/auth/common
git clone git@bitbucket.org:akiry/streaming.git ~/Projects/akiry/ortvi/ortvi-back/streaming
git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/streaming/common
git clone git@bitbucket.org:akiry/encoding.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/encoding
git clone git@bitbucket.org:akiry/encoder.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/encoder
git clone git@bitbucket.org:akiry/orchestrator.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/orchestrator
git clone git@bitbucket.org:akiry/downloader.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/mover
git clone git@bitbucket.org:akiry/vod-transcoder.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/vod-transcoder
```

-   Akiry-front ortvi

```
git clone git@bitbucket.org:akiry/akiry-webplay.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webplay
git clone git@bitbucket.org:akiry/akiry-webplayer.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webplay/projects/akiry-player
git clone git@bitbucket.org:akiry/akiry-webdocker.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webdocker
git clone git@bitbucket.org:akiry/akiry-manager.git ~/Projects/akiry/ortvi/ortvi-front/akiry-manager
git clone git@bitbucket.org:akiry/akiry-material.git ~/Projects/akiry/ortvi/ortvi-front/akiry-manager/projects/akiry-material
```

-   Akiry-back arsim

```
git clone git@bitbucket.org:akiry/arsim-docker-backend.git ~/Projects/akiry/arsim/arsim-back/docker
git clone git@bitbucket.org:akiry/arsim-core.git ~/Projects/akiry/arsim/arsim-back/core
git clone git@bitbucket.org:akiry/arsim-common.git ~/Projects/akiry/arsim/arsim-back/core/common
git clone git@bitbucket.org:akiry/arsim-auth.git ~/Projects/akiry/arsim/arsim-back/auth
git clone git@bitbucket.org:akiry/arsim-common.git ~/Projects/akiry/arsim/arsim-back/auth/common
```

-   Akiry-front arsim

```
git clone git@bitbucket.org:akiry/arsim-aluno.git ~/Projects/akiry/arsim/arsim-front/aluno
git clone git@bitbucket.org:akiry/arsim-admin.git ~/Projects/akiry/arsim/arsim-front/admin
```

## Keybindings

> ->Settings->Keyboard Shortcuts->Home Folder = super+e

## Shell

//TODO: use https://github.com/zsh-users/antigen to easily change theme and plugins

### oh-my-zsh

-   Install zsh shell

```
sudo apt-get install zsh
```

-   Make your defaul shell

```
chsh -s &(which zsh)
```

-   Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### improvments

-   fira code nerd font regular

> Install a cool font with multiple symbols

```
wget -P ~/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
mkdir ~/.fonts
unzip ~/Downloads/FiraCode.zip -d ~/.fonts
```

-   fzf

> Install repository that enable ctrl+t and ctrl+r to search on terminal

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/src/.fzf
~/src/.fzf/install
```

-   gogh

> Install new set of colors for shell - Pencil Dark

```
mkdir  ~/src
git clone https://github.com/Mayccoll/Gogh.git ~/src/gogh
export TERMINAL=gnome-terminal
/home/thiago/src/gogh/themes/pencil-dark.sh
```

-   lsd

> Install the new ls

```
sudo snap install lsd
```

-   bashtop

> Install the new top

```
sudo snap install bashtop
```

### shell preferences

1. set pencil dark perfil
2. set FiraCode Nerd Font Regular
3. set cursor form I-Bean
4. enable blink cursor
5. enable transparance background low

### Theme

-   Clone Powerlevel10K theme for zsh

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

> Configure powerlevel10k with the following options

```
p10k configure
```

```
(y) (y) (y) (n) (3)Rainbow (1)Unicode (2)24-hour-format (3)Slanted (3)Slanted (1)Flat (1)One-line (2)Sparse (2)Many-icons (1)Concise (n) (3)Verbose
```

### Plugins

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```



## Nautilus

-   preferences
  
1. enable vision in lists
2. show hidden files
3. sort folders before files
4. allow folders to be expanded
5. show action that empty the trash
6. in columns, check only size


## Wallpaper

-   Dowload and set

```
wget https://i.pinimg.com/originals/a9/e8/60/a9e8603c729f89e6d7c427b48ab74fca.png -P ~/Imagens/wallpapers/
gsettings set org.gnome.desktop.background picture-uri file:///home/thiago/Imagens/wallpapers/a9e8603c729f89e6d7c427b48ab74fca.png
```

## Install drivers

-   sudo add-apt-repository ppa:graphics-drivers/ppa
-   ubuntu-drivers devices
-   sudo ubuntu-drivers autoinstall


## Cursor
```
https://www.gnome-look.org/p/1148692/
```

## Docky
```
sudo add-apt-repository ppa:ricotz/docky
sudo apt -y update
sudo apt -y install plank
```

## Uninstall
```
sudo apt -y remove aisleriot
sudo apt -y autoremove aisleriot
sudo apt -y remove gnome-mines
sudo apt -y autoremove gnome-mines
sudo apt -y remove gnome-sudoku
sudo apt -y autoremove gnome-sudoku
sudo apt -y remove gnome-mahjongg
sudo apt -y autoremove gnome-mahjongg
sudo apt -y remove thunderbird
sudo apt -y autoremove thunderbird
```

## Start Aplications

```
Start-up Applications > add Plank, add Albert
```
```
Tweaks > Extensions > Desktop Icons > Disable personal folder
```

## Teams

```
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list
```