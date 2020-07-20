# QUICK SETUP FOR UBUNTU DEVELOPMENT ENVIRONMENT

<img src="https://image.flaticon.com/icons/png/512/888/888879.png" alt="logo ubuntu" width="50">

## Ubuntu

```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
```

//TODO: dowload and set wallpaper

## Vim

Install vim

```
sudo apt install vim
```

### Theme

clone dracula repository

```
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start/dracula
```

```
vim ~/.vimrc
```

Just paste the following code

```
packadd! dracula
syntax enable
colorscheme dracula
```

## Albert

```
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert
```

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

#### Colorizing Man

```
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
```

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

### Code to select text of terminal using shift

```
sudo vim ~/.zshrc
```

Just paste the following code

```
r-delregion() {
  if ((REGION_ACTIVE)) then
     zle kill-region
  else
    local widget_name=$1
    shift
    zle $widget_name -- $@
  fi
}

r-deselect() {
  ((REGION_ACTIVE = 0))
  local widget_name=$1
  shift
  zle $widget_name -- $@
}

r-select() {
  ((REGION_ACTIVE)) || zle set-mark-command
  local widget_name=$1
  shift
  zle $widget_name -- $@
}

for key     kcap   seq        mode   widget (
    sleft   kLFT   $'\e[1;2D' select   backward-char
    sright  kRIT   $'\e[1;2C' select   forward-char
    sup     kri    $'\e[1;2A' select   up-line-or-history
    sdown   kind   $'\e[1;2B' select   down-line-or-history

    send    kEND   $'\E[1;2F' select   end-of-line
    send2   x      $'\E[4;2~' select   end-of-line

    shome   kHOM   $'\E[1;2H' select   beginning-of-line
    shome2  x      $'\E[1;2~' select   beginning-of-line

    left    kcub1  $'\EOD'    deselect backward-char
    right   kcuf1  $'\EOC'    deselect forward-char

    end     kend   $'\EOF'    deselect end-of-line
    end2    x      $'\E4~'    deselect end-of-line

    home    khome  $'\EOH'    deselect beginning-of-line
    home2   x      $'\E1~'    deselect beginning-of-line

    csleft  x      $'\E[1;6D' select   backward-word
    csright x      $'\E[1;6C' select   forward-word
    csend   x      $'\E[1;6F' select   end-of-line
    cshome  x      $'\E[1;6H' select   beginning-of-line

    cleft   x      $'\E[1;5D' deselect backward-word
    cright  x      $'\E[1;5C' deselect forward-word

    del     kdch1   $'\E[3~'  delregion delete-char
    bs      x       $'^?'     delregion backward-delete-char

  ) {
  eval "key-$key() {
    r-$mode $widget \$@
  }"
  zle -N key-$key
  bindkey ${terminfo[$kcap]-$seq} key-$key
}
```

## Google Chrome

Get repository key

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```

Setup repository

```
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```

Install google chome stable version

```
sudo apt-get update
sudo apt-get install google-chrome-stable
```

## Git

```
sudo apt install git
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

## Snap

```
sudo apt install snapd
```

## Vlc

Install vlc player

```
sudo snap install vlc
```

Install media codecs

```
sudo apt install ubuntu-restricted-extras

```

## NodeJs

Install NodeJs

```
sudo apt install nodejs
```

## NPM

Install node package manager

```
sudo apt install npm
```

## pip

Install package installer for Python

```
sudo apt-get update
sudo apt-get -y install python3-pip
```

Install common python libraries

```
pip install numpy
pip install pandas
```

## MongoDB

```
sudo apt-get install mongodb
```

## Curl

```
sudo apt install curl
```

## Increase number of listeners

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
```

## Install postgres

```
sudo apt install postgresql postgresql-contrib
```

## Configure Keyboard Shortcuts

## Spotify

```
sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list.d/spotify.list"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo apt-get update
sudo apt-get install spotify-client
```

## Gitkraken

```
sudo snap install gitkraken --classic
```

## Postman

```
sudo snap install postman
```

## Gnome tweak

```
sudo apt install gnome-tweak-tool
```

## Clone repositories

```
git clone https://github.com/ThiagoCosta360/exercises ~/exercises
```

//TODO: if I clone into projects the directory will be created?

```
mkdir projects
```

```
git clone https://github.com/ThiagoCosta360/portfolio ~/projects/portfolio
```

//TODO: git clone akiry

## Visual Studio Code

```
sudo snap install --classic code
```

## Plank

```
sudo apt-get install plank
```

## Nautilus

Open preferences
-enable vision in lists
-show action that empty the trash
-in columns, check only size

## remove recents

go to Settings > Security & Privacy > Files & Applications and check "off"
