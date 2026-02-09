```markdown
# 🚀 Terminal Setup Automatizado (Zsh + Tilix + Spaceship)

Este repositório contém um script de automação (`install.sh`) para transformar uma instalação limpa do Linux (testado no **Zorin OS 17** e **Ubuntu 24.04**) em um ambiente de desenvolvimento produtivo e visualmente agradável.

O objetivo é configurar o **Zsh** com o tema **Spaceship**, fontes com ícones e plugins essenciais com apenas um comando.

## 🛠️ O que está incluído?

* **Terminal Emulator:** [Tilix](https://gnunn1.github.io/tilix-web/) (Suporte a Tiling e múltiplos painéis).
* **Shell:** Zsh (configurado como padrão).
* **Framework:** [Oh My Zsh](https://ohmyz.sh/).
* **Tema:** [Spaceship Prompt](https://spaceship-prompt.sh/) (Minimalista, mostra versões do Python, Docker, Node e status do Git).
* **Fonte:** Fira Code (Suporte nativo a ícones e ligaduras de código).
* **Plugins de Produtividade:**
    * `zsh-autosuggestions`: Sugere comandos baseados no histórico enquanto você digita (seta para a direita aceita).
    * `zsh-syntax-highlighting`: Colore o comando (verde=certo, vermelho=errado) antes de executar.

---

## 📦 Como Instalar

Abra seu terminal e siga os passos abaixo:

### 1. Clone este repositório
```bash
git clone [https://github.com/SEU_USUARIO/terminal-setup.git](https://github.com/SEU_USUARIO/terminal-setup.git)
cd terminal-setup

```

### 2. Dê permissão de execução

```bash
chmod +x install.sh

```

### 3. Execute o instalador

```bash
./install.sh

```

> **Nota:** O script pedirá sua senha de `sudo` para instalar os pacotes básicos (git, curl, zsh, tilix, fontes).

### 4. Reinicie a Sessão

Após a conclusão, faça **Logoff** ou reinicie o computador para que as alterações de grupo de usuário e fontes tenham efeito.

---

## ⚙️ Configuração Manual Obrigatória (Fonte)

Após rodar o script e abrir o **Tilix**, é possível que os ícones do tema apareçam como quadrados brancos (`▯`). Isso acontece porque o terminal precisa ser configurado manualmente para usar a fonte correta.

**Como corrigir:**

1. Abra o **Tilix**.
2. Clique no **Menu** (☰) e vá em **Preferências** (Preferences).
3. Na barra lateral esquerda, selecione seu **Perfil** (geralmente "Padrão" ou "Default").
4. No lado direito, clique na aba **Aparência**.
5. Marque a caixa **"Fonte personalizada"**.
6. Clique no nome da fonte e selecione: **`Fira Code Regular`** (Recomendado tamanho 12).
7. Clique em **Selecionar**.

*Pronto! Os ícones de nave, relógio e git devem aparecer imediatamente.*

---

## 📂 Estrutura dos Arquivos

* `install.sh`: Script principal (Bash). Instala dependências, baixa o Oh My Zsh e configura os links simbólicos. É **idempotente** (pode rodar várias vezes para corrigir ou atualizar a instalação).
* `zshrc_custom`: Arquivo de configuração modelo. O script copiará este arquivo para o seu `~/.zshrc`.

## 🤝 Contribuição

Sinta-se à vontade para fazer um fork e adaptar para suas necessidades!

```

```
