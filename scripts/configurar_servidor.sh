#!/bin/bash
# Script de configuração de rede e firewall para Asterisk

echo "🔹 Configurando firewall para Asterisk..."
sudo ufw allow 5060/udp        # Porta SIP
sudo ufw allow 10000:20000/udp # Portas RTP
sudo ufw reload

echo "🔹 Configuração de rede concluída."
echo "✅ O servidor está pronto para uso com o Asterisk."