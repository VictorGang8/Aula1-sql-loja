# 🛒 Banco de Dados de Loja

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-orange?style=for-the-badge)

## 📌 Sobre o projeto

Este projeto tem como objetivo praticar os fundamentos da linguagem SQL utilizando o MySQL, por meio da criação e manipulação de um banco de dados para uma loja.

O script contempla a criação de tabelas, definição de chaves primárias e estrangeiras, alteração da estrutura das tabelas e comandos para consulta e exclusão de dados e estruturas.

## 🎯 Objetivos

- Aprender os comandos básicos do SQL.
- Criar e gerenciar bancos de dados.
- Estruturar tabelas e definir seus campos.
- Implementar relacionamentos entre tabelas.
- Praticar alterações na estrutura do banco de dados.
- Compreender comandos de consulta e exclusão.

## 🗄️ Estrutura do banco de dados

O banco de dados utilizado no projeto é chamado `loja` e contém três tabelas principais.

### 1. Tabela `cliente`

Armazena os dados dos clientes.

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | INT | Identificador único do cliente |
| `nome` | VARCHAR(100) | Nome do cliente |
| `email` | VARCHAR(100) | E-mail único do cliente |

### 2. Tabela `produto`

Armazena os produtos disponíveis na loja.

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | INT | Identificador único do produto |
| `nome` | VARCHAR(100) | Nome do produto |
| `preco` | DECIMAL(5,2) | Preço do produto |

### 3. Tabela `pedido`

Registra os pedidos realizados, relacionando clientes e produtos.

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | INT | Identificador único do pedido |
| `data_pedido` | DATE | Data do pedido |
| `client_id` | INT | Referência ao cliente |
| `produto_id` | INT | Referência ao produto |

## 🔗 Relacionamentos

A tabela `pedido` possui duas chaves estrangeiras:

- `client_id` referencia o campo `id` da tabela `cliente`.
- `produto_id` referencia o campo `id` da tabela `produto`.

Esses relacionamentos permitem associar cada pedido a um cliente e a um produto.

## 🛠️ Tecnologias utilizadas

- **MySQL:** sistema de gerenciamento de banco de dados relacional.
- **SQL:** linguagem utilizada para criar e manipular estruturas de banco de dados.

## 📚 Comandos SQL praticados

| Comando | Finalidade |
|---|---|
| `CREATE DATABASE` | Criar um banco de dados |
| `SHOW DATABASES` | Listar bancos de dados |
| `USE` | Selecionar um banco de dados |
| `CREATE TABLE` | Criar tabelas |
| `PRIMARY KEY` | Definir a chave primária |
| `FOREIGN KEY` | Definir relacionamentos |
| `NOT NULL` | Impedir valores nulos |
| `UNIQUE` | Impedir valores duplicados |
| `ALTER TABLE` | Alterar a estrutura de uma tabela |
| `ADD` | Adicionar uma coluna |
| `CHANGE` | Alterar o nome e a definição de uma coluna |
| `MODIFY` | Modificar a definição de uma coluna |
| `SELECT` | Consultar dados |
| `DROP TABLE` | Excluir uma tabela |
| `DROP DATABASE` | Excluir um banco de dados |

## 📂 Estrutura dos arquivos

```text
banco-de-dados-loja/
├── README.md
└── loja.sql
```

- `README.md`: documentação do projeto.
- `loja.sql`: script SQL com os comandos de criação e manipulação do banco de dados.

## ▶️ Como executar o projeto

1. Instale o MySQL Server.
2. Abra o MySQL Workbench ou outro cliente SQL compatível.
3. Abra o arquivo `loja.sql`.
4. Execute os comandos do script conforme a sequência apresentada.
5. Observe as operações de criação, alteração e exclusão realizadas.

**⚠️ Atenção:** o script contém os comandos `DROP TABLE pedido` e `DROP DATABASE loja`, que excluem estruturas do banco de dados. Execute essas instruções somente se desejar realizar as exclusões.

## 🚀 Aprendizados

Com este projeto, são praticados conceitos fundamentais de bancos de dados relacionais, incluindo:

- Criação de estruturas de dados.
- Definição de tipos de dados.
- Utilização de restrições e chaves.
- Relacionamento entre tabelas.
- Alteração e exclusão de estruturas.
- Organização de scripts SQL.

## 👨‍💻 Autor

**Victor Gabriel Tavares Oliveira**

Estudante de Engenharia de Software, com interesse em desenvolvimento de software, bancos de dados e tecnologia.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Perfil-blue?style=flat&logo=linkedin)](https://linkedin.com/in/victor8tavares)

---

⭐ Se este projeto foi útil para seus estudos, considere deixar uma estrela no repositório!
