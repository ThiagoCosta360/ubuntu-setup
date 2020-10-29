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

-   Setup repository

```
sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list.d/spotify.list"
```

-   Get repository key

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
```

-   Installation

```
sudo apt-get update
sudo apt-get install spotify-client
```

### Snap

-   Installation

```
sudo apt install snapd
```

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
pip install numpy
pip install pandas
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

### Gitkraken

-   Installation

```
sudo snap install gitkraken --classic
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
git clone git@bitbucket.org:akiry/docker-backend.git ~/projects/akiry/ortvi/ortvi-back/docker
git clone git@bitbucket.org:akiry/core.git ~/projects/akiry/ortvi/ortvi-back/core
git clone git@bitbucket.org:akiry/common.git ~/projects/akiry/ortvi/ortvi-back/core/common
git clone git@bitbucket.org:akiry/auth.git ~/projects/akiry/ortvi/ortvi-back/auth
git clone git@bitbucket.org:akiry/common.git ~/projects/akiry/ortvi/ortvi-back/auth/common
git clone git@bitbucket.org:akiry/streaming.git ~/projects/akiry/ortvi/ortvi-back/streaming
git clone git@bitbucket.org:akiry/common.git ~/projects/akiry/ortvi/ortvi-back/streaming/common
git clone git@bitbucket.org:akiry/encoding.git ~/projects/akiry/ortvi/ortvi-back/transcoder2/encoding
git clone git@bitbucket.org:akiry/encoder.git ~/projects/akiry/ortvi/ortvi-back/transcoder2/encoder
git clone git@bitbucket.org:akiry/orchestrator.git ~/projects/akiry/ortvi/ortvi-back/transcoder2/orchestrator
git clone git@bitbucket.org:akiry/downloader.git ~/projects/akiry/ortvi/ortvi-back/transcoder2/mover
git clone git@bitbucket.org:akiry/vod-transcoder.git ~/projects/akiry/ortvi/ortvi-back/transcoder2/vod-transcoder
```

-   Akiry-front ortvi

```
git clone git@bitbucket.org:akiry/akiry-webplay.git ~/projects/akiry/ortvi/ortvi-front/akiry-webplay
git clone git@bitbucket.org:akiry/akiry-webplayer.git ~/projects/akiry/ortvi/ortvi-front/akiry-webplay/projects/akiry-player
git clone git@bitbucket.org:akiry/akiry-webdocker.git ~/projects/akiry/ortvi/ortvi-front/akiry-webdocker
git clone git@bitbucket.org:akiry/akiry-manager.git ~/projects/akiry/ortvi/ortvi-front/akiry-manager
git clone git@bitbucket.org:akiry/akiry-material.git ~/projects/akiry/ortvi/ortvi-front/akiry-manager/projects/akiry-material
```

-   Akiry-back arsim

```
git clone git@bitbucket.org:akiry/arsim-docker-backend.git ~/projects/akiry/arsim/arsim-back/docker
git clone git@bitbucket.org:akiry/arsim-core.git ~/projects/akiry/arsim/arsim-back/core
git clone git@bitbucket.org:akiry/arsim-common.git ~/projects/akiry/arsim/arsim-back/core/common
git clone git@bitbucket.org:akiry/arsim-auth.git ~/projects/akiry/arsim/arsim-back/auth
git clone git@bitbucket.org:akiry/arsim-common.git ~/projects/akiry/arsim/arsim-back/auth/common
```

-   Akiry-front arsim

```
git clone git@bitbucket.org:akiry/arsim-aluno.git ~/projects/akiry/arsim/arsim-front/aluno
git clone git@bitbucket.org:akiry/arsim-admin.git ~/projects/akiry/arsim/arsim-front/admin
```

## Keybindings

> ->configurations->shprtcuts->personal folder = super+e

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
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
mkdir ~/.fonts
unzip ~/Downloads/FiraCode.zip -d ~/.fonts
```

-   fzf

> Install repository that enable ctrl+t and ctrl+r to search on terminal

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

-   gogh

> Install new set of colors for shell "option 131"

```
bash -c  "$(wget -qO- https://git.io/vQgMr)"
```

-   lsd

> Install the new ls

```
sudo snap install lsd
alias ls='lsd --group-dirs first'
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
(y) (y) (y) (n) (3)Rainbow (1)Unicode (2)24-hour-format (3)Slanted (3)Slanted (4)Slanted (1)One-line (2)Sparse (2)Many-icons (1)Concise (n) (3)Verbose
```

### Plugins

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

## Visual Studio Code

-   Installations

```
sudo snap install --classic code
```

> Use Settings Sync to get configuration

## Nautilus

-   preferences

1. enable vision in lists
2. show action that empty the trash
3. in columns, check only size

## Remove recents

> Settings->Security & Privacy -> Files & Applications -> check "off"

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

## Albert-translate

-   Instalation

```
pip3 install --user google-cloud-translate
git clone git@github.com:ThiagoCosta/albert-translate.git ~/apps/albert-translate
```

-   Configuration
    Paste the following code on '~/.config/albert/translate.ini'

```
[api]
project_id = albert-translations
service_key = ~/apps/albert-translate/albert-translations-0825e0747555.json

[extension]
source_lang = auto
target_lang = pt, en, es, fr, ja
```

## Kubernetes

```
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
```

# thefuck

sudo pip3 install thefuck
