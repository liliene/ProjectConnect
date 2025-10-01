#!/bin/bash
# Script para instalação do Asterisk no Ubuntu

echo "🔹 Atualizando pacotes..."
sudo apt update && sudo apt upgrade -y

echo "🔹 Instalando dependências..."
sudo apt install -y build-essential libssl-dev libncurses5-dev \
  libnewt-dev libxml2-dev libsqlite3-dev uuid-dev libjansson-dev wget tar

echo "🔹 Baixando Asterisk..."
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-20-current.tar.gz

echo "🔹 Extraindo arquivos..."
tar xvfz asterisk-20-current.tar.gz
cd asterisk-20*/

echo "🔹 Compilando Asterisk..."
./configure
make
sudo make install
sudo make samples
sudo make config

echo "✅ Instalação concluída! Execute 'asterisk -rvvv' para iniciar."
