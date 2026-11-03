# 🗄️ Modelagem de Banco de Dados - E-commerce

Projeto de estruturação de banco de dados relacional (MySQL) para um E-commerce de celulares e assistência técnica.

## 🎯 Objetivo
Demonstrar conhecimentos em modelagem de dados, criação de tabelas com chaves primárias e estrangeiras (DDL), inserção de dados (DML) e consultas complexas com JOINs e agregações (DQL).

## 🛠️ Tecnologias
- **MySQL** (Linguagem SQL)
- **VS Code** (Edição de código)

## 📁 Estrutura do Projeto
- `01_schema.sql`: Criação do banco e tabelas (Clientes, Produtos, Pedidos, Itens).
- `02_dados.sql`: Inserção de dados fictícios para testes.
- `03_consultas.sql`: Relatórios e consultas avançadas.

## ⚙️ Funcionalidades Demonstradas
- Relacionamento 1:N (Cliente -> Pedidos)
- Relacionamento N:N (Pedidos <-> Produtos via tabela `itens_pedido`)
- Uso de `INNER JOIN` para cruzar dados
- Uso de `GROUP BY` e `SUM()` para calcular o valor total gasto por cada cliente

---
*Desenvolvido por [Wallysson Costa](https://github.com/DeathWingg)*