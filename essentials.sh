#!/bin/bash

echo "--->>> Básicos Linux | Pressione ENTER <<<---"

read dummy;

# Atualizar aplicativos já instalados
sudo apt update && apt upgrade -y

# Instala pacotes restritos do Ubuntu como fontes do Windows, codecs de media e Flash para navegadores
sudo apt install ubuntu-restricted-extras -y

# Igual à instalação anterior, com alguns plugins extras
sudo apt install ubuntu-restricted-addons -y

# Necessário para quando você for instalar software de fora da loja Ubuntu via PPAs
sudo apt install software-properties-common -y

# Pacote de aprimoramento do pacote de instalação Ubuntu / Debian
sudo apt-get install apt-transport-https -y

# Contém as autoridades certificadoras fornecidas com o navegador do Mozilla de modo a permitir que aplicações baseadas em SSL verifiquem a autenticidade das conexões SSL. 
sudo apt-get install ca-certificates -y

# GnuPG é uma ferramenta do GNU para comunicação e armazenamento de dados de forma segura. Pode ser utilizado para criptografar dados e criar assinaturas digitais.
sudo apt-get install gnupg-agent -y

# Este pacote contém os softwares necessários para construção e instalação segura de pacotes .DEB
sudo apt install build-essential -y

# Necessário para instalação de softwares via CURL
sudo apt install curl -y

# Biblioteca que otimiza a entrega de erros de execução para o usuário.
sudo apt install liberror-perl -y

# Seu sistema Ubuntu / Debian provavelmente já tem esse pacote para instalação de pacotes .DEB, mas o comando vai deixar o pacote atualizado.
sudo apt install dpkg -y

echo "--->>> Inserindo usuário na lista de SUDOS para não ficar precisando usar SUDO em instalações | Pressione ENTER <<<---"

read dummy;

# Adicionar usuário ao grupo sudoers
sudo adduser $USER
 
sudo usermod -a -G sudo $USER

echo "--->>> Programas variados para o dia a dia | Pressione ENTER <<<---"

read dummy;

# Para versionamentos no Github, Gitlab e Bitbucket
sudo apt install git -y

# Para enviar arquivos via FTP
sudo apt install filezilla -y

# Editor de áudio simples e fácil de usar.
sudo apt install audacity -y

# Conhecido como o Photoshop do mundo Linux.
sudo apt install gimp -y

# Administrador de banco de dados local.
sudo apt install mysql-workbench -y

echo "--->>> Instalando editores de código | Pressione ENTER <<<---"

read dummy;

# Um dos mais antigos editores de código, ele roda no terminal e substitui muito bem o Nano
sudo apt install vim -y

# Script para instalar o VSCode via terminal
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb

dpkg -i vscode.deb

apt install -f

# Script para instalar o Sublime-text
add-apt-repository ppa:webupd8team/sublime-text-3

apt update

apt install sublime-text-installer -y

echo "--->>> Instalando software para desenvolvimento Web | Pressione ENTER <<<---"

read dummy;

# Para desenvolvimento local
sudo apt install apache2 -y

gedit apache_config.txt

read dummy;

# Banco de dados MySQL local
sudo apt install mysql-server -y

gedit mysql_config.txt

read dummy;

# PHP e biblioteca de conexão com Apache
sudo apt install php libapache2-mod-php -y

# Gerenciador de pacotes e software
sudo apt install composer -y

# Biblioteca de conexão entre PHP e MySQL
sudo apt install php-mysql -y

# Biblioteca para criar arquivos XML 
sudo apt install php-simplexml -y

# Biblioteca para criar arquivos zip
sudo apt install php-zip -y

# Biblioteca para trabalhar com curl pelo PHP
sudo apt install php-curl -y

# Biblioteca para trabalhar com imagens no PHP
sudo apt install php-gd -y

# Biblioteca para debuggar 
sudo apt install php-xdebug -y

# Gerenciador de banco de dados simples
sudo apt install phpmyadmin -y

# Biblioteca que faz o Apache, PHPMyAdmin e PHP conversarem sem erros de codificação
sudo apt install php-mbstring -y

# Para conseguir trabalhar com multilínguas no seu sistema
sudo apt install php-gettext -y

gedit php_config.txt

read dummy;

# Ativar mbstring
sudo phpenmod mbstring

# Ativar o mod rewrite do Apache
sudo a2enmod rewrite

# Reiniciar o Apache
sudo service apache2 restart

# Instalação do Docker para projetos
sudo apt-get install docker.io -y

# Instalação do Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 
sudo chmod +x /usr/local/bin/docker-compose

# Adicionar usuário ao grupo sudoers
sudo groupadd docker
 
sudo usermod -aG docker $USER

# Instalação do NVM para você escolher qual versão do Node deseja instalar
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
 
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source ~/.bashrc

# Exemplo de versão do Node que vai ser instalado.
nvm install 10.15.1

# Software que otimiza sua bateria (notebooks)
sudo apt install tlp tlp-rdw

# Faça uma atualização final para encerrar.
sudo apt update && apt upgrade -y

echo "--->>> Pronto! Todo ambiente Web instalado com sucesso | Pressione ENTER <<<---"

read dummy;
