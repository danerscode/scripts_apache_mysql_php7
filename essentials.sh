#!/bin/bash

echo "--->>> Básicos Linux | Pressione ENTER <<<---"

read dummy;

sudo apt update && apt upgrade -y
 
sudo apt install ubuntu-restricted-extras -y
 
sudo apt install ubuntu-restricted-addons -y
 
sudo apt install software-properties-common -y
 
sudo apt-get install apt-transport-https -y
 
sudo apt-get install ca-certificates -y
 
sudo apt-get install gnupg-agent -y
 
sudo apt install build-essential -y

sudo apt install curl -y
 
sudo apt install liberror-perl -y
 
sudo apt install dpkg -y

echo "--->>> Inserindo usuário na lista de SUDOS para não ficar precisando usar SUDO em instalações | Pressione ENTER <<<---"

read dummy;

sudo adduser $USER
 
sudo usermod -a -G sudo $USER

echo "--->>> Programas variados para o dia a dia | Pressione ENTER <<<---"

read dummy;

sudo apt install gedit -y

sudo apt install git -y

sudo apt install filezilla -y

sudo apt install audacity -y

sudo apt install gimp -y

sudo apt install mysql-workbench -y

echo "--->>> Instalando editores de código | Pressione ENTER <<<---"

read dummy;

sudo apt install vim -y

wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb

dpkg -i vscode.deb

apt install -f

add-apt-repository ppa:webupd8team/sublime-text-3

apt update

apt install sublime-text-installer -y

echo "--->>> Instalando software para desenvolvimento Web | Pressione ENTER <<<---"

read dummy;

sudo apt install apache2 -y

gedit apache_config.txt

read dummy;

sudo apt install mysql-server -y

gedit mysql_config.txt

read dummy;

sudo apt install php libapache2-mod-php -y
 
sudo apt install php-mysql -y
 
sudo apt install php-simplexml -y
 
sudo apt install php-zip -y
 
sudo apt install php-curl -y
 
sudo apt install composer -y
 
sudo apt install php-gd -y

gedit php_config.txt

read dummy;

sudo apt install phpmyadmin -y

sudo apt install php-mbstring -y

sudo apt install php-gettext -y

phpenmod mbstring

a2enmod rewrite

service apache2 restart

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) \ stable"
 
sudo apt update && apt upgrade -y
 
sudo apt-get install docker.io -y
 
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 
sudo chmod +x /usr/local/bin/docker-compose
 
sudo groupadd docker
 
sudo usermod -aG docker $USER
 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
 
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

sudo apt update && apt upgrade -y

echo "--->>> Pronto! Todo ambiente Web instalado com sucesso | Pressione ENTER <<<---"

read dummy;
