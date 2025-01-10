-- 1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores
select * from customers;
SELECT * FROM orders;
SELECT * FROM suppliers;

-- 2. Obter todos os Clientes em ordem alfabética por país e nome
SELECT contact_name, country FROM customers ORDER by country asc, contact_name ASC

-- 3. Obter os 5 pedidos mais antigos
SELECT order_id, order_date	from orders order by order_date asc limit 5


-- 4. Obter a contagem de todos os Pedidos feitos durante 1997
	select count(order_id) from orders WHERE order_date between '01/01/1997' and '31/12/1997';
	
SELECT COUNT(*) AS "Number of Orders During 1997"
FROM orders
WHERE order_date BETWEEN '1997-1-1' AND '1997-12-31';

-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
select contact_name, contact_title from customers where contact_title ilike '%manager%' order by contact_name ASC


-- 6. Obter todos os pedidos feitos em 19 de maio de 1997
select * from orders where order_date = '19/05/1997'

