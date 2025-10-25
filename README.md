# Ecommerce_DIO
# Projeto de Banco de Dados: E-commerce

## Descrição do Projeto
Este projeto simula o **cenário de um sistema de e-commerce**, aplicando conceitos de **modelagem de banco de dados relacional**.  
O objetivo é demonstrar a criação de um **banco de dados completo**, incluindo tabelas, relacionamentos, constraints, persistência de dados e consultas complexas.

O projeto foi desenvolvido utilizando **MySQL**, e contempla:

- Modelagem de tabelas com **chaves primárias e estrangeiras**.
- Respeito às regras de negócio do cenário de e-commerce.
- Estrutura de **clientes, produtos, pedidos, fornecedores, vendedores e estoques**.
- Inserção de dados para testes e validação.
- Consultas SQL avançadas (SELECT, JOIN, GROUP BY, HAVING, ORDER BY, atributos derivados).

---

## Arquivos do Projeto

- `create_tables.sql` → Criação das tabelas e definições de constraints  
- `inserts.sql` → Inserção de dados para testes  
- `queries.sql` → Consultas SQL para análise de dados  
- `README.md` → Este arquivo

---

## Tabelas Principais

- **client**: informações de clientes (nome, CPF, endereço).  
- **product**: produtos disponíveis, categorias e classificação.  
- **orders**: pedidos realizados, status, descrição e valor de envio.  
- **productStorage**: estoque dos produtos e localização.  
- **supplier**: fornecedores cadastrados.  
- **seller**: vendedores cadastrados.  
- **productSeller**: relação de produtos vendidos por cada vendedor.  
- **productOrder**: produtos contidos em cada pedido.  
- **storageLocation**: localização física dos produtos no estoque.  
- **productSupplier**: relação de produtos e fornecedores.

---

## Queries SQL Exemplares

O projeto contém consultas que aplicam diferentes conceitos:

- **SELECT simples**: recuperar todos os clientes, produtos ou pedidos.  
- **WHERE**: filtros por status de pedidos, categoria de produtos ou avaliação.  
- **Atributos derivados**: calcular valores totais, concatenação de nomes completos.  
- **ORDER BY**: ordenar clientes por sobrenome ou produtos por avaliação.  
- **GROUP BY / HAVING**: total de produtos por categoria ou média de avaliações.  
- **JOIN**: relacionar pedidos com clientes, produtos com fornecedores e vendedores.


