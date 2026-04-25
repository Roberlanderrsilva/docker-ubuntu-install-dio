#!/bin/bash

# --- Cores para o terminal ---
VERDE='\033[0;32m'
AZUL='\033[0;34m'
NC='\033[0m'

echo -e "${AZUL}# --- Iniciando Instalação Profissional Docker ---${NC}"

# 1. Atualização e Dependências
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg

# 2. Configuração de Chaves GPG (Padrão Atualizado)
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# 3. Adicionando Repositório
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 4. Instalação do Docker
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 5. Criando o Container de Teste (Apache)
echo -e "${VERDE}# --- Criando o container Apache... ---${NC}"
sudo docker run --name apache-A -d -p 80:80 httpd

echo -e "${AZUL}# --- Processo Finalizado com Sucesso! ---${NC}"
