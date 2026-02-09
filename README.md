# 🚀 Terminal Setup Automatizado (Zsh + Tilix + Spaceship)

Este repositório contém um script de automação (`install.sh`) projetado para transformar uma instalação limpa do Linux em um ambiente de desenvolvimento produtivo, moderno e visualmente agradável. Testado e otimizado para **Zorin OS 17** e **Ubuntu 24.04**.

O objetivo principal é configurar o **Zsh** com o tema **Spaceship**, instalar fontes com suporte a ícones e configurar plugins essenciais de produtividade com apenas um comando.

---

## 🛠️ O que está incluído?

O script realiza a instalação e configuração dos seguintes componentes:

| Componente | Descrição |
| :--- | :--- |
| **Terminal Emulator** | [Tilix](https://gnunn1.github.io/tilix-web/) - Suporte a tiling e múltiplos painéis. |
| **Shell** | **Zsh** configurado como shell padrão do sistema. |
| **Framework** | [Oh My Zsh](https://ohmyz.sh/) para gerenciamento de configurações. |
| **Tema** | [Spaceship Prompt](https://spaceship-prompt.sh/) - Minimalista e informativo (Git, Node, Docker, etc). |
| **Fonte** | **Fira Code** - Fonte com suporte nativo a ícones e ligaduras de código. |
| **Plugins** | `zsh-autosuggestions` e `zsh-syntax-highlighting` para maior agilidade no terminal. |

---

## 📦 Como Instalar

Siga os passos abaixo para automatizar a configuração do seu terminal:

### 1. Clone este repositório

```bash
git clone https://github.com/iurimcosta/terminal-setup.git
cd terminal-setup
```

### 2. Dê permissão de execução ao script

```bash
chmod +x install.sh
```

### 3. Execute o instalador

```bash
./install.sh
```

> [!IMPORTANT]
> O script solicitará sua senha de `sudo` para instalar os pacotes necessários (`git`, `curl`, `zsh`, `tilix`, `fonts-firacode`).

### 4. Reinicie a Sessão

Após a conclusão, é necessário fazer **logoff** ou reiniciar o computador para que as alterações de shell e fontes sejam aplicadas corretamente.

---

## ⚙️ Configuração Manual da Fonte (Obrigatório)

Após rodar o script e abrir o **Tilix**, os ícones podem aparecer como quadrados (`▯`). Isso ocorre porque o terminal precisa ser configurado manualmente para usar a fonte **Fira Code**.

### Passo a passo para o Tilix:

1. Abra o **Tilix**.
2. Clique no **Menu** (☰) e vá em **Preferências**.
3. Na barra lateral esquerda, selecione seu **Perfil** (geralmente "Padrão" ou "Default").
4. Clique na aba **Aparência**.
5. Marque a opção **Fonte personalizada**.
6. Selecione **Fira Code Regular** (tamanho recomendado: 12).
7. Clique em **Selecionar**.

✅ **Pronto!** Os ícones e o tema devem ser renderizados corretamente agora.

---

## 📂 Estrutura do Projeto

* `install.sh`: Script Bash principal que automatiza todo o processo. Ele é **idempotente**, ou seja, pode ser executado novamente sem causar problemas.
* `zshrc_custom`: Modelo de configuração que será copiado para seu `~/.zshrc`.

---

## 🤝 Contribuição

Sinta-se à vontade para fazer um fork e adaptar as configurações para suas necessidades pessoais!
