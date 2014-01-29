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




