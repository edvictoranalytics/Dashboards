show databases;
use ecommerce;
show tables;

-- drop database ecommerce;
-- Inserindo dados na Tabela Cliente 
-- Nome, Sobrenome, CPF, dtNascimento
insert into Cliente (Nome, Sobrenome, CPF, dtNascimento)
	values ('Victor','Santana',10873523674,'1995-08-25'),
	('Mariana','Oliveira',23456789012,'1988-03-14'),
	('Carlos','Souza',34567890123,'1992-11-02'),
	('Fernanda','Almeida',45678901234,'1985-07-19'),
	('João','Pereira',56789012345,'1990-01-30'),
	('Ana','Costa',67890123456,'1993-09-12'),
	('Ricardo','Mendes',78901234567,'1987-05-22'),
	('Paula','Ferreira',89012345678,'1996-12-08'),
	('Luiz','Gomes',90123456789,'1989-04-17'),
	('Camila','Ribeiro',12345678901,'1994-06-25'),
	('Thiago','Barbosa',22345678901,'1986-02-11'),
	('Juliana','Martins',32345678902,'1991-08-03'),
	('Felipe','Rocha',42345678903,'1997-10-21'),
	('Patrícia','Dias',52345678904,'1984-12-15'),
	('André','Carvalho',62345678905,'1992-07-07'),
	('Beatriz','Lima',72345678906,'1995-05-29'),
	('Gabriel','Araújo',82345678907,'1989-09-09'),
	('Sofia','Teixeira',92345678908,'1993-03-18'),
	('Daniel','Correia',13345678909,'1988-11-27'),
	('Larissa','Batista',23345678910,'1996-04-05');
-- Inserindo dados na Tabela Endereco
-- logradouro, Numero, Complemento, Bairro, Cidade, Estado, CEP, tipoEndereco, idCliente
insert into Endereco (logradouro, Numero, Complemento, Bairro, Cidade, Estado, CEP, tipoEndereco, idCliente)
	values ('Rua das Flores', '123', 'Apto 45', 'Centro','São Paulo', 'SP', '01001000', 'Residencial', 1),
	('Avenida Brasil', '456', 'Casa 2', 'Jardim América','Rio de Janeiro', 'RJ', '20040002', 'Residencial', 2),
	('Rua das Acácias', '789', 'Bloco B', 'Boa Vista','Belo Horizonte', 'MG', '30120010', 'Comercial', 3),
	('Travessa da Paz', '321', 'Sala 12', 'Industrial','Curitiba', 'PR', '80030020', 'Comercial', 4),
	('Rua do Sol', '654', 'Apto 101', 'Centro','Recife', 'PE', '50010030', 'Residencial', 5),
	('Avenida Atlântica', '987', 'Cobertura', 'Copacabana','Rio de Janeiro', 'RJ', '22021040', 'Residencial', 6),
	('Rua das Palmeiras', '147', 'Casa 5', 'Vila Nova','Fortaleza', 'CE', '60050050', 'Residencial', 7),
	('Rua São João', '258', 'Loja 3', 'Centro','Porto Alegre', 'RS', '90010060', 'Comercial', 8),
	('Avenida Independência', '369', 'Galpão 7', 'Distrito','Campinas', 'SP', '13020070', 'Comercial', 9),
	('Rua das Hortênsias', '741', 'Apto 22', 'Jardim Botânico','Brasília', 'DF', '70030080', 'Residencial', 10),
	('Rua XV de Novembro', '852', 'Sala 9', 'Centro','Joinville', 'SC', '89201090', 'Comercial', 11),
	('Rua das Laranjeiras', '963', 'Casa 8', 'Zona Sul','Natal', 'RN', '59020100', 'Residencial', 12),
	('Avenida Paulista', '159', 'Apto 303', 'Bela Vista','São Paulo', 'SP', '01311000', 'Residencial', 13),
	('Rua Goiás', '753', 'Bloco C', 'Funcionários','Belo Horizonte', 'MG', '30150110', 'Residencial', 14),
	('Rua Bahia', '357', 'Casa 12', 'Centro','Salvador', 'BA', '40020120', 'Residencial', 15),
	('Rua Pernambuco', '951', 'Sala 4', 'Comércio','Vitória', 'ES', '29030130', 'Comercial', 16),
	('Rua Sergipe', '258', 'Apto 12', 'Jardim Europa','São Paulo', 'SP', '01430140', 'Residencial', 17),
	('Rua Amazonas', '654', 'Casa 9', 'Centro','Manaus', 'AM', '69010150', 'Residencial', 18),
	('Rua Pará', '852', 'Galpão 2', 'Distrito Industrial','Belém', 'PA', '66020160', 'Comercial', 19),
	('Rua Maranhão', '147', 'Apto 7', 'Centro','São Luís', 'MA', '65030170', 'Residencial', 20);
-- Inserindo dados na Tabela Produto
-- NomeProduto, Descricao, Valor, Tamanho
insert into Produto (NomeProduto, Descricao, Valor, Tamanho)
	values 
	('Conjunto de Utensílios de Cozinha', 'Kit com colheres, espátulas e conchas', 80.00, 'Pequeno'),
	('Sofá 3 Lugares', 'Sofá estofado confortável para sala', 1200.00, 'Grande'),
	('Liquidificador', 'Eletrodoméstico pequeno para cozinha', 250.00, 'Médio'),
	('Jogo de Louças', 'Conjunto de pratos e tigelas de porcelana', 300.00, 'Médio'),
	('Mesa de Jantar', 'Mesa de madeira para 6 lugares', 1500.00, 'Grande'),
	('Conjunto de Panelas', 'Panelas antiaderentes variadas', 400.00, 'Médio'),
	('Kit Acessórios de Cozinha', 'Ralador, abridor e medidores', 90.00, 'Pequeno'),
	('Criado-Mudo', 'Mesa lateral de madeira', 350.00, 'Médio'),
	('Jarra de Vidro', 'Jarra transparente com tampa', 60.00, 'Pequeno'),
	('Conjunto de Canecas', 'Kit com 6 canecas de porcelana', 120.00, 'Pequeno'),
	('Forma de Bolo', 'Forma redonda antiaderente', 45.00, 'Pequeno'),
	('Pote Hermético', 'Pote plástico com vedação', 35.00, 'Pequeno'),
	('Rack para TV', 'Rack de madeira para sala', 600.00, 'Médio'),
	('Guarda-Roupa 6 Portas', 'Roupeiro grande de madeira', 1800.00, 'Grande'),
	('Cama Casal', 'Cama de madeira com estrado', 1200.00, 'Grande'),
	('Estante de Livros', 'Estante vertical com prateleiras', 500.00, 'Médio'),
	('Fogão 4 Bocas', 'Fogão a gás com acendimento automático', 900.00, 'Grande'),
	('Geladeira Duplex', 'Geladeira com freezer superior', 2500.00, 'Grande'),
	('Freezer Horizontal', 'Freezer para conservação de alimentos', 2200.00, 'Grande'),
	('Máquina de Lavar', 'Lavadora automática 12kg', 1800.00, 'Grande');
    
-- Inserindo dados na Tabela Categoria
-- nomeCategoria
insert into Categoria (nomeCategoria) 
	values('Utensílios de Cozinha'),
	('Panelas e Frigideiras'),
	('Louças e Acessórios'),
	('Móveis de Sala'),
	('Móveis de Quarto'),
	('Eletrodomésticos Pequenos'),
	('Eletrodomésticos Grandes'),
	('Armazenamento e Organização'),
	('Decoração'),
	('Lavanderia');

show tables;
desc categoria;

select * from Produto_Categoria;
insert into Produto_Categoria (idProduto, idCategoria) 
values 
-- Utensílios de Cozinha
(1, 1),   -- Conjunto de Utensílios de Cozinha → Utensílios de Cozinha
(7, 1),   -- Kit Acessórios de Cozinha → Utensílios de Cozinha

-- Móveis de Sala
(2, 4),   -- Sofá 3 Lugares → Móveis de Sala
(13, 4),  -- Rack para TV → Móveis de Sala
(16, 4),  -- Estante de Livros → Móveis de Sala

-- Móveis de Quarto
(5, 5),   -- Mesa de Jantar → Móveis de Quarto
(8, 5),   -- Criado-Mudo → Móveis de Quarto
(14, 5),  -- Guarda-Roupa 6 Portas → Móveis de Quarto
(15, 5),  -- Cama Casal → Móveis de Quarto

-- Louças e Acessórios
(4, 3),   -- Jogo de Louças → Louças e Acessórios
(9, 3),   -- Jarra de Vidro → Louças e Acessórios
(10, 3),  -- Conjunto de Canecas → Louças e Acessórios
(11, 3),  -- Forma de Bolo → Louças e Acessórios

-- Panelas e Frigideiras
(6, 2),   -- Conjunto de Panelas → Panelas e Frigideiras

-- Eletrodomésticos Pequenos
(3, 6),   -- Liquidificador → Eletrodomésticos Pequenos

-- Eletrodomésticos Grandes
(17, 7),  -- Fogão 4 Bocas → Eletrodomésticos Grandes
(18, 7),  -- Geladeira Duplex → Eletrodomésticos Grandes
(19, 7),  -- Freezer Horizontal → Eletrodomésticos Grandes
(20, 7),  -- Máquina de Lavar → Eletrodomésticos Grandes
-- Armazenamento e Organização
(12, 8);  -- Pote Hermético → Armazenamento e Organização

    
-- Inserindo dados na Tabela Pedido

select * from Pedido;
-- update Pedido set status = 'Cancelado' where idPedido in (3,5,7,9,11,13,15,47,48,49,51,56,58);
select * from pedido;
-- Cliente 1 fez 3 pedidos
-- drop table Pedido, Pagamento, PedidoProduto;
INSERT INTO Pedido (idOrdemCliente, Descricao, Frete) VALUES
(1, 'Pedido de utensílios de cozinha', 25.50),
(1, 'Pedido de panelas adicionais', 40.00),
(1, 'Pedido de frigideiras', 35.00),
-- Cliente 2 fez 2 pedidos
(2, 'Pedido de móveis de sala', 120.00),
(2, 'Pedido de sofá extra', 180.00),
-- Cliente 3 fez 1 pedido
(3, 'Pedido de eletrodomésticos pequenos', 80.00),
-- Cliente 4 fez 4 pedidos
(4, 'Pedido de louças variadas', 30.00),
(4, 'Pedido de pratos adicionais', 25.00),
(4, 'Pedido de copos', 20.00),
(4, 'Pedido de travessas', 28.00),
-- Cliente 5 fez 5 pedidos
(5, 'Pedido de mesa de jantar', 150.00),
(5, 'Pedido de cadeiras', 90.00),
(5, 'Pedido de aparador', 120.00),
(5, 'Pedido de estante', 110.00),
(5, 'Pedido de rack', 95.00);

-- idPOproduto = idProduto , idPOpedido = idPedido auto increment
INSERT INTO PedidoProduto (idPOproduto, idPOpedido, poQuantidade, poStatus) VALUES
(1, 1, 2, 'Disponível'),
(6, 2, 1, 'Disponível'),
(6, 3, 1, 'Disponível'),
(2, 4, 1, 'Disponível'),
(2, 5, 1, 'Disponível'),
(3, 6, 1, 'Disponível'),
(4, 7, 2, 'Disponível'),
(4, 8, 1, 'Disponível'),
(10, 9, 4, 'Disponível'),
(4, 10, 2, 'Disponível'),
(5, 11, 1, 'Disponível'),
(5, 12, 4, 'Disponível'),
(16, 13, 2, 'Disponível'),
(16, 14, 1, 'Disponível'),
(13, 15, 1, 'Disponível');

-- Alterando alguns status do pedido
-- update Pedido set status = 'Cancelado' where idPedido in (3,5,7,9,11,13,15);

insert into Pagamento (tipoPagamento, valorPago, idPedido)
	values ('PIX', 245.50, 1), -- Pedido 1
('Cartão', 970.00, 2),       -- Pedido 2
('Boleto', 180.00, 3),       -- Pedido 3
('A vista', 40.00, 4),       -- Pedido 4
('Cartão', 1000.00, 5),      -- Pedido 5
('PIX', 165.00, 6),          -- Pedido 6
('A vista', 30.00, 7),       -- Pedido 7
('Dois cartões', 420.00, 8), -- Pedido 8
('Cartão', 58.00, 9),        -- Pedido 9
('PIX', 62.00, 10),          -- Pedido 10
('Boleto', 80.00, 11),       -- Pedido 11
('A vista', 28.00, 12),      -- Pedido 12
('Cartão', 600.00, 13),      -- Pedido 13
('PIX', 750.00, 14),         -- Pedido 14
('Cartão', 370.00, 15);      -- Pedido 15


-- Quantos pedidos foram feitos por cada cliente?

select pg.idPagamento, pg.tipoPagamento, pg.valorPago AS Valor, pg.idPedido from Pagamento pg where pg.idPedido = 1;
select pg.idPagamento, pg.tipoPagamento, pg.valorPago AS Valor, p.Descricao, p.Frete from Pagamento pg join Pedido p on pg.idPedido = p.idOrdemCliente where pg.idPedido = 1;

insert into Estoque (Local) 
values ('AL'),('SP'),('MG'),('RS'),('DF');

select * from Estoque;
select * from Produto_em_Estoque;

insert into Produto_em_Estoque (idProduto, idEstoque, Quantidade)
	values 
	-- Estoque 1 — AL 
	(1, 1, 30),
	(3, 1, 20),
	(6, 1, 15),
	(9, 1, 40);
	-- Estoque 2 — SP
	INSERT INTO Produto_em_Estoque (idProduto, idEstoque, Quantidade) VALUES
	(2, 2, 25),
	(5, 2, 12),
	(8, 2, 18),
	(14, 2, 6),
	(18, 2, 10),
	(20, 2, 9);
	-- Estoque 3 — MG
	INSERT INTO Produto_em_Estoque (idProduto, idEstoque, Quantidade) VALUES
	(4, 3, 22),
	(7, 3, 35),
	(10, 3, 28),
	(16, 3, 14);
	-- Estoque 4 — RS
	INSERT INTO Produto_em_Estoque (idProduto, idEstoque, Quantidade) VALUES
	(11, 4, 50),
	(12, 4, 70),
	(13, 4, 11),
	(15, 4, 8);
	-- Estoque 5 — DF
	INSERT INTO Produto_em_Estoque (idProduto, idEstoque, Quantidade) VALUES
	(17, 5, 5),
	(19, 5, 4);
    
insert into Pessoa (endereço, contato)
values ('Rua das Flores, 100', '82999990001'),
	('Av. Brasil, 200', '82999990002'),
	('Rua do Sol, 300', '82999990003'),
	('Praça Central, 400', '82999990004'),
	('Rua Verde, 500', '82999990005'),
	('Av. Paulista, 1000', '11999990001'),
	('Rua das Palmeiras, 2000', '11999990002'),
	('Av. Independência, 3000', '11999990003'),
	('Rua das Acácias, 4000', '11999990004'),
	('Av. Atlântica, 5000', '11999990005');

INSERT INTO PessoaFisica (idPessoa, nome, CPF) 
	values (1, 'João Silva', '12345678901'),
	(2, 'Maria Souza', '23456789012'),
	(3, 'Carlos Pereira', '34567890123'),
	(4, 'Ana Oliveira', '45678901234'),
	(5, 'Paulo Santos', '56789012345');

insert into PessoaJuridica (idPessoa, razaoSocial, nomeFantasia, CNPJ)
	values (6, 'Comercial Paulista Ltda', 'Comercial Paulista', '11111111000191'),
	(7, 'Palmeiras Distribuidora SA', 'Distribuidora Palmeiras', '22222222000191'),
	(8, 'Independência Comércio Ltda', 'Independência Comércio', '33333333000191'),
	(9, 'Acácias Importadora Ltda', 'Importadora Acácias', '44444444000191'),
	(10, 'Atlântica Exportadora SA', 'Exportadora Atlântica', '55555555000191');

-- Inserindo Fornecedores | Sempre pessoa juridica
insert into Fornecedor (idPessoa)
	values (6), (7), (8), (9), (10);
select * from fornecedor;
-- Inserindo Produtos em cada Fornecedor
insert into ProdutoFornecedor (idFornecedor, idProduto)
values
-- Fornecedor 1 fornece 4 produtos
(1, 1), (1, 2), (1, 3), (1, 4),
-- Fornecedor 2 fornece 4 produtos
(2, 5), (2, 6), (2, 7), (2, 8),
-- Fornecedor 3 fornece 4 produtos
(3, 9), (3, 10), (3, 11), (3, 12),
-- Fornecedor 4 fornece 4 produtos
(4, 13), (4, 14), (4, 15), (4, 16),
-- Fornecedor 5 fornece 4 produtos
(5, 17), (5, 18), (5, 19), (5, 20);

-- Inserindo dados dos produtos os vendedores e vinculado a pessoa fisica
insert into Vendedor (idVendedor, Local, idPessoa) 
	values (1, 'Loja Centro - AL', 1),   -- João Silva
	(2, 'Loja Shopping - SP', 2), -- Maria Souza
	(3, 'Loja Mercado - MG', 3),  -- Carlos Pereira
	(4, 'Loja Bairro - RS', 4),   -- Ana Oliveira
	(5, 'Loja Online - DF', 5);   -- Paulo Santos

-- Vendedor 1
insert into ProdutoVendedor (idVendedor, idProduto, prodQuantidade)
	values (1, 1, 10), (1, 2, 8), (1, 3, 12), (1, 4, 6);
    
-- Vendedor 2
insert into ProdutoVendedor (idVendedor, idProduto, prodQuantidade)
values (2, 5, 3), (2, 6, 15), (2, 7, 4), (2, 8, 2);

-- Vendedor 3
insert into ProdutoVendedor (idVendedor, idProduto, prodQuantidade)
	values (3, 9, 20), (3, 10, 10), (3, 11, 8), (3, 12, 9);

-- Vendedor 4
insert into ProdutoVendedor (idVendedor, idProduto, prodQuantidade)
	values (4, 13, 7), (4, 14, 5), (4, 15, 6), (4, 16, 4);

-- Vendedor 5
insert into ProdutoVendedor (idVendedor, idProduto, prodQuantidade)
	values (5, 17, 5), (5, 18, 3), (5, 19, 2), (5, 20, 1);

