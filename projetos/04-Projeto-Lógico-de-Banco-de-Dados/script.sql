-- criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce;
CREATE DATABASE ecommerce;
use ecommerce;
-- criar tabela cliente
show tables;
create table Cliente(
	idCliente int auto_increment primary key,
    Nome varchar(20) not null,
    Sobrenome varchar(50) not null,
    CPF varchar(11) not null,
    dtNascimento date,
   	constraint unique_cpf_cliente unique (CPF)
-- definir um nome para a constraint para facilitar localização
-- Endereço foi separado de Cliente por ser um atributo composto e multivalorado, 
-- caracterizando uma relação 1:N, atendendo às regras de normalização.
);
-- criar tabela endereco
create table Endereco(
	idEndereco int auto_increment primary key,
	logradouro varchar(50) not null,
    Numero varchar(10) not null,
    Complemento varchar(50) not null,
    Bairro varchar(50) not null,
    Cidade varchar(50) not null,
    Estado varchar(2) not null,
    CEP varchar(8),
    tipoEndereco varchar(20),
    idCliente int not null,
    foreign key (idCliente) references cliente(idCliente)
);
-- criar tabela produto
create table Produto(
	idProduto int auto_increment primary key,
    NomeProduto varchar(45) not null,
	-- se fosse simplificar seria: Categoria ENUM('XX','ZZ','YY') not null,    
    Descricao varchar(255) not null,
    Valor float,    
    Tamanho varchar(10)
    -- C x L x A
); 
-- criar tabela categoria
create table Categoria(
	idCategoria int auto_increment primary key,
    nomeCategoria varchar(45) not null
-- Categoria foi separada de Produto por representar 
-- uma entidade própria, reutilizável e relacionada a vários produtos, atendendo às regras de normalização.
);
create table Produto_Categoria(
--  representa um relacionamento. A combinação dos dois IDs já identifica o registro
	idProduto int not null,
    idCategoria int not null,
    primary key (idProduto, idCategoria),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idCategoria) references Categoria(idCategoria)
-- A tabela Produto_Categoria resolve o relacionamento muitos-para-muitos 
-- entre Produto e Categoria por meio de uma chave primária composta.
-- Essa tabela guarda quais produtos pertencem a quais categorias, 
-- garantindo que só existam ligações válidas e sem repetição   
);
-- criar tabela pedido
create table Pedido(
	idPedido int auto_increment primary key,
    idOrdemCliente int,
    status enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    descricao varchar(255),
    frete float default 10,  
	constraint fk_pedido_cliente foreign key (idOrdemCliente) references Cliente(idCliente)
		on update cascade -- atualiza automaticamente os valores em tabelas filhas quando a chave primária correspondente na tabela pai é modificada
);
create table PedidoProduto(
	IdPOproduto int,
    idPOpedido int,
    poQuantidade int default 1,
    poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
    -- possível mudança: ('Pendente','Separado','Enviado','Cancelado') default 'Pendente'
    primary key (idPOproduto, idPOpedido),
    constraint fk_produto_vendido foreign key (idPOproduto) references Produto(idProduto),
	constraint fk_produto_pedido foreign key (idPOpedido) references Pedido(idPedido)
);
-- criar tabela pagamentos
create table Pagamento(
	idPagamento int auto_increment primary key,
    tipoPagamento enum('A vista','Boleto','Cartão','Dois cartões','PIX') not null,
    valorPago float not null,
    idPedido int not null,
    foreign key (idPedido) references Pedido(idPedido)
);
-- criar tabela estoque
create table Estoque(
	idEstoque int auto_increment primary key,
    Local VARCHAR(255)
);
-- criar tabela	Produto em Estoque
create table Produto_em_Estoque(
	idProduto int not null,
    idEstoque int not null,
    Quantidade int default 0,
    primary key (idProduto, idEstoque),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idEstoque) references Estoque(idEstoque)
);
-- criar tabela pessoa
create table Pessoa (
	idPessoa int auto_increment primary key,
    endereço varchar(255),
    contato varchar(20) not null
);
-- criar tabela Pessoa Física
create table PessoaFisica(
	idPessoa int auto_increment primary key,
    nome varchar (45),
    CPF char(11) not null unique,
    constraint fk_pf_idPessoa 
		foreign key (idPessoa) references Pessoa(idPessoa)
);
-- criar tabela Pessoa Juridica
create table PessoaJuridica(
	idPessoa int auto_increment primary key,
	razaoSocial varchar(45) not null,
    nomeFantasia varchar(45) not null,
    CNPJ char(14) not null,
    constraint unique_cnpj unique (CNPJ),
    constraint fk_pk_idPessoa 
		foreign key (idPessoa) references Pessoa(idPessoa)
);
-- criar tabela fornecedor
create table Fornecedor(
	idFornecedor int auto_increment primary key,
    idPessoa int not null unique,
	foreign key (idPessoa) references PessoaJuridica(idPessoa)
);
-- criar tabeça Fornedor_Protudo
create table ProdutoFornecedor (
	idFornecedor int not null,
	idProduto int not null,
	primary key (idFornecedor, idProduto),
	foreign key (idFornecedor) references Fornecedor(idFornecedor),
	foreign key (idProduto) references Produto(idProduto)
);
 -- criar tabela Terceiro_Vendedor
create table Vendedor(
	idVendedor int primary key,
    Local varchar(100),
    idPessoa int not null,
    foreign key (idPessoa) references Pessoa(idPessoa)
);
-- criar tabela Vendedor_Produto
create table ProdutoVendedor (
	idVendedor int,
    idProduto int,
    prodQuantidade int default 1,
    primary key (idVendedor, idProduto),
    constraint fk_produto_vendedor foreign key (idVendedor) references Vendedor(idVendedor),
    constraint fk_produto_produto foreign key (idProduto) references Produto(idProduto)
);


show tables;
show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'ecommerce';

