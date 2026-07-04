CREATE TABLE funcionarios(
id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	cargo VARCHAR(100),
	salario NUMERIC(10,2),
	idade INTEGER,
	cidade VARCHAR(80),
	ativo BOOLEAN
);

CREATE TABLE produtos(
id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	categoria VARCHAR(80),
	preco NUMERIC(10,2),
	estoque INTEGER
);

CREATE TABLE pedidos(
id SERIAL PRIMARY KEY,
	cliente VARCHAR(100),
	produto VARCHAR(100),
	quantidade INTEGER,
	valor_total NUMERIC(10,2),
	data_pedido DATE
);

INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('João Henrique Martins', 'Gerente', 6500.00, 42, 'Curitiba', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Mariana Alves Costa', 'Vendedora', 3200.00, 27, 'Florianópolis', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Lucas Pereira Lima', 'Estoquista', 2800.00, 24, 'Porto Alegre', FALSE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Beatriz Fernandes', 'Analista Financeira', 4800.00, 35, 'Campinas', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Rafael Souza Gomes', 'Supervisor', 5100.00, 39, 'Londrina', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Camila Ribeiro', 'Atendente', 2400.00, 22, 'Joinville', FALSE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Gustavo Oliveira', 'Técnico de TI', 4300.00, 31, 'Maringá', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Larissa Rocha', 'Auxiliar Administrativo', 2600.00, 26, 'Sorocaba', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Felipe Carvalho', 'Comprador', 4500.00, 37, 'Canoas', TRUE);
INSERT INTO funcionarios (nome, cargo, salario, idade, cidade, ativo)
VALUES ('Ana Paula Mendes', 'Recursos Humanos', 4700.00, 34, 'Novo Hamburgo', FALSE);

INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Notebook Dell Inspiron', 'Informática', 4299.90, 15);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Mouse Logitech M170', 'Periféricos', 79.90, 80);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Cadeira Gamer ThunderX3', 'Móveis', 1299.00, 10);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Samsung Galaxy A56', 'Smartphones', 1999.90, 25);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Smart TV LG 50', 'Eletrônicos', 2899.00, 12);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Fone JBL Tune 720BT', 'Áudio', 349.90, 35);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Impressora Epson L3250', 'Impressoras', 1199.90, 8);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Cafeteira Mondial Dolce Arome', 'Eletrodomésticos', 239.90, 20);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Bicicleta Caloi Vulcan', 'Esportes', 1799.00, 6);
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Livro Clean Code', 'Livros', 119.90, 40);

INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Carlos Henrique', 'Notebook Dell Inspiron', 1, 4299.90, '2026-05-10');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Juliana Moraes', 'Mouse Logitech M170', 2, 159.80, '2026-05-12');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Pedro Almeida', 'Smart TV LG 50', 1, 2899.00, '2026-05-15');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Fernanda Silva', 'Fone JBL Tune 720BT', 3, 1049.70, '2026-05-18');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Ricardo Nunes', 'Samsung Galaxy A56', 2, 3999.80, '2026-05-21');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Patrícia Gomes', 'Cafeteira Mondial Dolce Arome', 1, 239.90, '2026-05-24');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Eduardo Lopes', 'Impressora Epson L3250', 1, 1199.90, '2026-05-26');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Bianca Teixeira', 'Cadeira Gamer ThunderX3', 1, 1299.00, '2026-05-28');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Marcelo Azevedo', 'Bicicleta Caloi Vulcan', 1, 1799.00, '2026-05-30');
INSERT INTO pedidos (cliente, produto, quantidade, valor_total, data_pedido)
VALUES ('Vanessa Cardoso', 'Livro Clean Code', 4, 479.60, '2026-06-02');

SELECT * FROM funcionarios;
SELECT nome FROM funcionarios;
SELECT nome, cargo FROM funcionarios;
SELECT nome, salario FROM funcionarios WHERE salario > 3000;
SELECT nome, idade FROM funcionarios WHERE idade < 30;
SELECT nome, ativo FROM funcionarios WHERE ativo = TRUE;
SELECT nome, ativo FROM funcionarios WHERE ativo = FALSE;
SELECT nome, cidade FROM funcionarios WHERE cidade = 'Porto Alegre';
SELECT nome, cidade FROM funcionarios WHERE cidade IN ('Porto Alegre', 'Canoas');
SELECT nome, idade FROM funcionarios WHERE idade BETWEEN 20 AND 40;
SELECT nome, idade, ativo FROM funcionarios WHERE idade > 25 AND ativo = TRUE;
SELECT nome, cidade FROM funcionarios WHERE cidade = 'Canoas' OR cidade = 'Novo Hamburgo';
SELECT nome, ativo FROM funcionarios WHERE NOT ativo;
SELECT * FROM funcionarios LIMIT 3;
SELECT nome, salario FROM funcionarios ORDER BY salario DESC LIMIT 1;
SELECT nome, salario FROM funcionarios WHERE salario BETWEEN 2000 AND 4000;
SELECT nome FROM funcionarios WHERE nome LIKE 'A%';
SELECT nome, idade FROM funcionarios WHERE idade >= 40;

SELECT * FROM produtos;
SELECT nome, preco FROM produtos WHERE preco > 500;
SELECT nome, preco FROM produtos WHERE preco < 100;
SELECT nome, estoque FROM produtos WHERE estoque > 20;
SELECT nome FROM produtos WHERE nome LIKE 'M%';
SELECT nome FROM produtos WHERE nome LIKE '%A';
SELECT nome FROM produtos WHERE nome LIKE '%Mouse%';
SELECT nome, preco FROM produtos ORDER BY preco ASC;
SELECT nome FROM produtos ORDER BY nome ASC;
SELECT * FROM produtos LIMIT 5;
SELECT nome, categoria FROM produtos WHERE categoria IN ('Informática', 'Escritório');
SELECT nome, preco FROM produtos ORDER BY preco ASC LIMIT 1;
SELECT nome, estoque FROM produtos WHERE estoque < 10;
SELECT nome, preco FROM produtos WHERE categoria = 'Informática' AND preco > 300;
SELECT nome, estoque FROM produtos WHERE estoque BETWEEN 10 AND 30;

SELECT * FROM pedidos;
SELECT cliente, valor_total FROM pedidos WHERE valor_total > 500;
SELECT cliente, valor_total FROM pedidos WHERE valor_total BETWEEN 200 AND 800;
SELECT cliente, data_pedido FROM pedidos WHERE data_pedido BETWEEN '2026-01-01' AND '2026-12-31';
SELECT cliente, valor_total FROM pedidos ORDER BY valor_total DESC;
SELECT * FROM pedidos WHERE cliente = 'Carlos Henrique';

CREATE TABLE fornecedores(
id SERIAL PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(80),
telefone VARCHAR(20),
produto_fornecido VARCHAR(100)
);

CREATE TABLE entregas(
id SERIAL PRIMARY KEY,
pedido_id INTEGER,
transportadora VARCHAR(100),
status VARCHAR(50),
data_entrega DATE
);

CREATE TABLE filiais(
id SERIAL PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(80),
gerente VARCHAR(100),
funcionarios INTEGER
);

INSERT INTO fornecedores (nome, cidade, telefone, produto_fornecido) VALUES ('Tech Supply', 'Porto Alegre', '(51)99999-1111', 'Notebook Dell Inspiron');
INSERT INTO fornecedores (nome, cidade, telefone, produto_fornecido) VALUES ('Info Center', 'Canoas', '(51)98888-2222', 'Mouse Logitech M170');
INSERT INTO fornecedores (nome, cidade, telefone, produto_fornecido) VALUES ('EletroMax', 'Curitiba', '(41)97777-3333', 'Smart TV LG 50');
INSERT INTO fornecedores (nome, cidade, telefone, produto_fornecido) VALUES ('Mega Eletrônicos', 'São Paulo', '(11)96666-4444', 'Samsung Galaxy A56');
INSERT INTO fornecedores (nome, cidade, telefone, produto_fornecido) VALUES ('Office Brasil', 'Florianópolis', '(48)95555-5555', 'Impressora Epson L3250');

INSERT INTO entregas (pedido_id, transportadora, status, data_entrega) VALUES (1, 'Correios', 'Entregue', '2026-05-14');
INSERT INTO entregas (pedido_id, transportadora, status, data_entrega) VALUES (2, 'Jadlog', 'Em Transporte', '2026-05-16');
INSERT INTO entregas (pedido_id, transportadora, status, data_entrega) VALUES (3, 'Loggi', 'Entregue', '2026-05-18');
INSERT INTO entregas (pedido_id, transportadora, status, data_entrega) VALUES (4, 'Total Express', 'Pendente', '2026-05-21');
INSERT INTO entregas (pedido_id, transportadora, status, data_entrega) VALUES (5, 'Correios', 'Entregue', '2026-05-24');

INSERT INTO filiais (nome, cidade, gerente, funcionarios) VALUES ('Filial Centro', 'Porto Alegre', 'João Henrique Martins', 20);
INSERT INTO filiais (nome, cidade, gerente, funcionarios) VALUES ('Filial Norte', 'Canoas', 'Rafael Souza Gomes', 15);
INSERT INTO filiais (nome, cidade, gerente, funcionarios) VALUES ('Filial Sul', 'Curitiba', 'Beatriz Fernandes', 18);
INSERT INTO filiais (nome, cidade, gerente, funcionarios) VALUES ('Filial Leste', 'Florianópolis', 'Felipe Carvalho', 12);
INSERT INTO filiais (nome, cidade, gerente, funcionarios) VALUES ('Filial Oeste', 'Novo Hamburgo', 'Ana Paula Mendes', 10);

SELECT * FROM fornecedores;
SELECT nome, cidade FROM fornecedores WHERE cidade = 'Porto Alegre';
SELECT nome FROM fornecedores ORDER BY nome ASC;

SELECT * FROM entregas;
SELECT * FROM entregas WHERE status = 'Entregue';
SELECT * FROM entregas WHERE transportadora = 'Correios';

SELECT * FROM filiais;
SELECT nome, cidade FROM filiais WHERE funcionarios > 15;
SELECT nome FROM filiais ORDER BY funcionarios DESC;