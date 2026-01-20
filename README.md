# 📝 V360 Todo List

![Ruby](https://img.shields.io/badge/Ruby-3.4.8-red)
![Rails](https://img.shields.io/badge/Rails-7.0-red)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.0-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14-blue)

Uma aplicação moderna de gerenciamento de tarefas construída com **Ruby on Rails 7**, focado em uma experiência de usuário fluida (SPA-like) utilizando **Hotwire (Turbo & Stimulus)**.

## ✨ Funcionalidades

* **Listas de Tarefas:** Criação, edição e exclusão de múltiplas listas (ex: Casa, Trabalho).
* **Gerenciamento de Tasks:** Adicionar itens dentro das listas.
* **Status Interativo:** Marcar/Desmarcar tarefas como concluídas sem recarregar a página (Turbo Frames).
* **Drag & Drop:** Reordenar tarefas arrastando e soltando (Integração Stimulus + SortableJS).
* **Prazos e Notas:** Adicionar data de vencimento (com alerta visual de atraso) e comentários nas tarefas.
* **Design Responsivo:** Interface limpa construída com Tailwind CSS.

## 🛠 Tecnologias Utilizadas

* **Backend:** Ruby on Rails 7
* **Frontend:** Hotwire (Turbo Drive, Turbo Frames), Stimulus.js
* **Estilização:** Tailwind CSS
* **Banco de Dados:** PostgreSQL
* **Bibliotecas Extras:** * `sortablejs` (para o Drag and Drop)
    * `heroicons` (ícones SVG)

## 🚀 Como rodar localmente

Siga os passos abaixo para rodar o projeto na sua máquina:

### Pré-requisitos
* Ruby 3.4.8 instalado
* PostgreSQL instalado e rodando
* Node.js/Yarn (opcional, pois usamos importmap, mas bom ter)

### Instalação

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/SEU-USUARIO/To_Do_List-Case_V360.git](https://github.com/SEU-USUARIO/To_Do_List-Case_V360.git)
    cd To_Do_List-Case_V360
    ```

2.  **Instale as dependências:**
    ```bash
    bundle install
    ```

3.  **Configure o Banco de Dados:**
    Verifique suas credenciais no `config/database.yml` se necessário, e então rode:
    ```bash
    rails db:create
    rails db:migrate
    ```

4.  **Inicie o Servidor:**
    ```bash
    bin/dev
    # ou
    rails server
    ```

5.  Acesse `http://localhost:3000` no seu navegador.

## 📦 Deploy (Produção)

Este projeto está configurado para deploy no **Render.com**.

Acesse em: "https://to-do-list-case-v360.onrender.com"
