# -------------Update-----------------
# sudo apt-get update
# sudo apt-get -y upgrade
# sudo apt-get -y dist-upgrade
# ---------------------------------------


# -------------Chrome----------------
# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# sudo apt -y update
# sudo apt -y install google-chrome-stable
# ---------------------------------------

# -------------Spotify-----------------
# sudo snap install spotify
# ---------------------------------------


# -------------VSCode---------------
# sudo snap -y install --classic code
# code --install-extension shan.code-settings-sync
# code . 
# ---------------------------------------

# -------------GitKraken-------------
# sudo snap install gitkraken --classic
# ---------------------------------------


# -------------Vim---------------------
# sudo apt -y install vim
# ---------------------------------------

# -------------Make-------------------
# sudo apt -y install make
# ---------------------------------------

# -------------Dicord------------------
# sudo snap install discord
# ---------------------------------------

# -------------Albert------------------
# curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
# echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
# sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
# sudo apt update
# sudo apt install albert
# git clone git@github.com:ThiagoCosta360/albert-translator.git ~/Projects/personal/albert-translator
# make install --directory=~/Projects/personal/albert-translator/
# ---------------------------------------

# -------------Fortune-----------------
# sudo apt install fortune
# ---------------------------------------

# -------------Vlc----------------------
# sudo snap install vlc
# sudo apt -y install ubuntu-restricted-extras
# ---------------------------------------


# -------------NodeJs-----------------
# sudo apt -y install nodejs
# ---------------------------------------


# -------------Npm--------------------
# sudo apt -y install npm
# ---------------------------------------

# -------------Pip---------------------
# sudo apt -y install python3-pip
# pip3 install numpy
# pip3 install pandas
# ---------------------------------------

# -------------MongoDB-------------
# sudo apt -y install mongodb
# ---------------------------------------

# -------------Curl---------------------
# sudo apt -y install curl
# ---------------------------------------

# -------------Postgres----------------
# sudo apt -y install postgresql postgresql-contrib
# ---------------------------------------

# -------------Postman----------------
# sudo snap install postman
# ---------------------------------------

# -------------GnomeTweak---------
# sudo apt -y install gnome-tweak-tool
# ---------------------------------------

# -------------Docker-----------------
# sudo apt -y install  apt-transport-https ca-certificates curl gnupg-agent software-properties-common
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# sudo apt -y update
# sudo apt -y install docker-ce docker-ce-cli containerd.io
# sudo usermod -aG docker thiago
# ---------------------------------------

# -------------Compose----------------
# sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# ---------------------------------------

# -------------MyRepos---------
# git clone git@github.com:ThiagoCosta360/exercises.git ~/Projects/personal/exercises
# git clone git@github.com:ThiagoCosta360/portfolio.git ~/Projects/personal/portfolio
# git clone git@github.com:ThiagoCosta360/ais.git ~/Projects/personal/ais
# ---------------------------------------

# -------------OrtviBack--------------
# git clone git@bitbucket.org:akiry/docker-backend.git ~/Projects/akiry/ortvi/ortvi-back/docker
# git clone git@bitbucket.org:akiry/core.git ~/Projects/akiry/ortvi/ortvi-back/core
# git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/core/common
# git clone git@bitbucket.org:akiry/auth.git ~/Projects/akiry/ortvi/ortvi-back/auth
# git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/auth/common
# git clone git@bitbucket.org:akiry/streaming.git ~/Projects/akiry/ortvi/ortvi-back/streaming
# git clone git@bitbucket.org:akiry/common.git ~/Projects/akiry/ortvi/ortvi-back/streaming/common
# git clone git@bitbucket.org:akiry/encoding.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/encoding
# git clone git@bitbucket.org:akiry/encoder.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/encoder
# git clone git@bitbucket.org:akiry/orchestrator.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/orchestrator
# git clone git@bitbucket.org:akiry/downloader.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/mover
# git clone git@bitbucket.org:akiry/vod-transcoder.git ~/Projects/akiry/ortvi/ortvi-back/transcoder2/vod-transcoder
# ---------------------------------------

# -------------OrtviFront-----------
# git clone git@bitbucket.org:akiry/akiry-webplay.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webplay
# git clone git@bitbucket.org:akiry/akiry-webplayer.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webplay/projects/akiry-player
# git clone git@bitbucket.org:akiry/akiry-webdocker.git ~/Projects/akiry/ortvi/ortvi-front/akiry-webdocker
# git clone git@bitbucket.org:akiry/akiry-manager.git ~/Projects/akiry/ortvi/ortvi-front/akiry-manager
# git clone git@bitbucket.org:akiry/akiry-material.git ~/Projects/akiry/ortvi/ortvi-front/akiry-manager/projects/akiry-material
# ---------------------------------------

# -------------ArsimBack---------
# git clone git@bitbucket.org:akiry/arsim-docker-backend.git ~/Projects/akiry/arsim/arsim-back/docker
# git clone git@bitbucket.org:akiry/arsim-core.git ~/Projects/akiry/arsim/arsim-back/core
# git clone git@bitbucket.org:akiry/arsim-common.git ~/Projects/akiry/arsim/arsim-back/core/common
# git clone git@bitbucket.org:akiry/arsim-auth.git ~/Projects/akiry/arsim/arsim-back/auth
# git clone git@bitbucket.org:akiry/arsim-common.git ~/Projects/akiry/arsim/arsim-back/auth/common
# ---------------------------------------

# -------------ArsimFront------------
# git clone git@bitbucket.org:akiry/arsim-aluno.git ~/Projects/akiry/arsim/arsim-front/aluno
# git clone git@bitbucket.org:akiry/arsim-admin.git ~/Projects/akiry/arsim/arsim-front/admin
# ---------------------------------------

# -------------AkiryCase------------
# git clone git@bitbucket.org:akiry/case-web.git ~/Projects/akiry/case/case-front/case-web
# git clone git@bitbucket.org:akiry/akiry-webplayer.git ~/Projects/akiry/case/case-front/case-web/projects/akiry-player
# git clone git@bitbucket.org:akiry/docker-case.git ~/Projects/akiry/case/case-front/docker-case
# ---------------------------------------

git clone git@bitbucket.org:akiry/akiry-webplay.git ~/Projects/akiry/reviver/reviver-front/akiry-webplay
git clone git@bitbucket.org:akiry/akiry-webplayer.git ~/Projects/akiry/reviver/reviver-front/akiry-webplay/projects/akiry-player
git clone git@bitbucket.org:akiry/akiry-webdocker.git ~/Projects/akiry/reviver/reviver-front/akiry-webdocker

git clone git@bitbucket.org:akiry/akiry-webakiry.git ~/Projects/akiry/institutional/akiry-webakiry

# -------------Zsh---------------------
# sudo apt -y install zsh
# chsh -s &(which zsh)

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# wget -P ~/Downloads  https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
# mkdir ~/.fonts
# unzip ~/Downloads/FiraCode.zip -d ~/.fonts

# git clone --depth 1 https://github.com/junegunn/fzf.git ~/src/.fzf
# ~/src/.fzf/install

#mkdir  ~/src
#git clone https://github.com/Mayccoll/Gogh.git ~/src/gogh
#export TERMINAL=gnome-terminal
#/home/thiago/src/gogh/themes/pencil-dark.sh

# sudo snap install lsd

# sudo snap install bashtop

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# rm ~/.zshrc
# cp ./dotfiles/.zshrc ~/.zshrc

# git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
# --------------------------------------- 


# -------------Wallpaper-----------------
# wget https://i.pinimg.com/originals/a9/e8/60/a9e8603c729f89e6d7c427b48ab74fca.png -P ~/Imagens/wallpapers/
# gsettings set org.gnome.desktop.background picture-uri file:///home/thiago/Imagens/wallpapers/a9e8603c729f89e6d7c427b48ab74fca.png
# ---------------------------------------

# sudo apt autoremove