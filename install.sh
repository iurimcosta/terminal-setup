#!/bin/bash

# Cores para logs
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🚀 Iniciando Setup do Terminal (Zorin/Ubuntu)...${NC}"

# 1. Atualizar e Instalar Dependências
echo -e "${GREEN}📦 Instalando dependências (Zsh, Tilix, Fira Code, Git)...${NC}"
sudo apt update
sudo apt install -y curl git build-essential fonts-firacode tilix zsh

# 2. Instalar Oh My Zsh (se não existir)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo -e "${GREEN}⚡ Instalando Oh My Zsh...${NC}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3. Instalar Plugins
echo -e "${GREEN}🔌 Verificando Plugins...${NC}"
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# Autosuggestions
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

# Syntax Highlighting
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

# 4. Instalar Tema Spaceship (FORÇANDO REINSTALAÇÃO LIMPA)
echo -e "${GREEN}🚀 Configurando Tema Spaceship...${NC}"
# Removemos a versão antiga para garantir que não haja arquivos corrompidos/links quebrados
rm -rf "$ZSH_CUSTOM/themes/spaceship-prompt"
rm -f "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Baixa e Cria o Link novamente
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# 5. Aplicar o arquivo .zshrc customizado
echo -e "${GREEN}⚙️  Aplicando sua configuração (.zshrc)...${NC}"
if [ -f "./zshrc_custom" ]; then
    # Backup do atual
    [ -f "$HOME/.zshrc" ] && cp "$HOME/.zshrc" "$HOME/.zshrc.backup.$(date +%F_%H%M)"
    # Copia o novo
    cp ./zshrc_custom "$HOME/.zshrc"
else
    echo -e "⚠️  Arquivo modelo 'zshrc_custom' não encontrado na pasta!"
fi

# 6. Definir Zsh como padrão
if [ "$SHELL" != "$(which zsh)" ]; then
    echo -e "${GREEN}🔄 Mudando shell padrão para Zsh...${NC}"
    chsh -s $(which zsh)
fi

echo -e "${GREEN}✅ Instalação Concluída! Reinicie o computador para aplicar as fontes.${NC}"

