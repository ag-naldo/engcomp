#Script para atualização pós-instalação das máquinas clientes dos LCs da ENGCOMP
#Autores:       Luiz Angioletti <luizfelipeasoares@gmail.com>
#               Agnaldo Marinho <agnetonho@gmail.com>
#               Thiago Almeida <thiagoalmeidasa@gmail.com>
#Criação:       16/02/2011
#Atualização:   26/07/2011
#Atualização:   12/08/2011
#Atualização:   29/01/2014
#Versão:        0.4     versão inicial
#!/bin/bash

# Configurando o novo source.list do debian 7 wheezy 
cd /tmp
wget https://github.com/ag-naldo/engcomp/blob/master/sources.list
mv /etc/apt/sources.list /etc/apt/sources.list-orig
mv /tmp/sources.list /etc/apt/sources.list

#adcionando o usuario aluno sem senha e cria o home dele
useradd -m -s /bin/bash aluno
passwd -d aluno

# configura o kdm como gerenciador de login 
echo "/usr/bin/kdm" > /etc/X11/default-display-manager

# Atualizando os pacotes da maquina
aptitude update && aptitude upgrade -y && aptitude safe-upgrade -y && aptitude dist-upgrade -y

# Instalando os pacotes padroes do labcom
apt-get install  gnome, kde-full, yakuake, vim, katomic, kile, texmaker, mc, emacs,  emacs23-common-non-dfsg, kchmviewer, gv, unrar, rar, zip, unzip, zoo, bzip2, p7zip, p7zip-full, automake, gimp, maxima, wxmaxima, octave, gnuplot, gnuplot-x11, qtoctave, eclipse, openjdk-7-jdk, openjdk-7-jre, zenmap, fping, nmap, bmon, iftop, freemind, ssh, gcc, g++, perl5, lua5.1, build-essential, kdevelop, kdevplatform-dev, bluefish, mono-mcs, texlive-latex-base, texlive-latex-extra, texlive-latex-recommended, texlive-math-extra, subversion, git-core, apache2, apache2.2-common, apache2-doc, apache2-mpm-prefork, apache2-utils, apache2.2-bin, libapache2-mod-php5, php5,  php5-mysql, php5-imap, php5-cli, php5-cgi, php-pear, php-auth, mysql-server, phpmyadmin, italc-client, libitalc, k3b, tree, kid3, mplayer, totem, kmplayer, idle-python3.2, idle-python2.7, idle-python2.6, libpam-ldap, libnss-ldap, cvs, kopete, ruby1.9.1-full, ipython3, ipython3-notebook, ipython3-qtconsole



