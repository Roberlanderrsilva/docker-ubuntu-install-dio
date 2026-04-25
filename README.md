# docker-ubuntu-install-dio
# 🐳 Docker Auto-Installer para Lubuntu/Ubuntu

![Status](https://img.shields.io/badge/Status-Atualizado-brightgreen)
![DIO](https://img.shields.io/badge/Projeto-DIO-red)
![Linux](https://img.shields.io/badge/OS-Linux-blue)

Script de automação profissional para preparar o ambiente e instalar o Docker Engine + Docker Compose em sistemas baseados em Ubuntu/Lubuntu. 

## 🚀 Funcionalidades
* **Atualização de Repositórios:** Garante que o sistema esteja pronto para a instalação.
* **Segurança GPG:** Configura as chaves oficiais do Docker usando o novo padrão seguro `/etc/apt/keyrings`.
* **Instalação Completa:** Docker Engine, CLI, Containerd e Plugins do Compose.
* **Pós-Instalação:** Configura automaticamente as permissões para o usuário atual rodar comandos Docker sem `sudo`.
* **Container de Teste:** Já sobe um servidor Apache (httpd) para validar a instalação.

## 🛠️ Como usar
Basta clonar o repositório e executar os comandos abaixo:

```bash
chmod +x install-docker-ubuntu.sh
./install-docker-ubuntu.sh
