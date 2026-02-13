show databases;
use ecommerce;

select * from Cliente;
-- Quanto clientes temos cadastrados
select count(*) from Cliente;

select * from Pedido;
-- Quantos pedidos registrados
select count(*) from Pedido;

-- Quais pedidos cancelados
select * from Pedido p where status = 'Cancelado';
select p.idPedido, p.idOrdemCliente, p.status as 'Status', p.Descricao as 'Descrição' from Pedido p where status = 'Cancelado';

-- Liste os dados do cliente e pedido realizado pelos clientes ordenado por nome
select * from   Cliente c, Pedido p where c.idCliente = p.idOrdemCliente order by c.Nome;

-- Recuperação dos pedidos realizados
select 
	concat(c.Nome,' ', c.Sobrenome) as Clientes, p.idPedido as Pedido, p.Descricao as Descrição, p.status as Status_Pedido 
	from Cliente c,Pedido p 
    where c.idCliente = p.idOrdemCliente 
    order by c.Nome;

-- Recuperação de todos os cliente que fizeram algum pedido
select * from Pedido;
select * from PedidoProduto;
select * from Cliente c
		inner join Pedido p on c.idCliente = p.idOrdemCliente
        inner join Pagamento pg on p.idOrdemCliente = pg.idPedido
        inner join PedidoProduto po on po.idPOpedido = p.idPedido;
        
-- Recuperação quantos pedidos foram realizado por cliente 
select 
    c.idCliente, c.Nome, COUNT(*) as Quantidade_de_Pedidos
from Cliente c
		inner join
    Pedido p ON c.idCliente = p.idOrdemCliente
        inner join
    PedidoProduto po on po.idPOproduto = p.idPedido
group by idCliente;

-- Seleciona os fornecedores e os produtos que cada um fornece
select * from ProdutoFornecedor;
select 
    f.idFornecedor,
    pj.razaoSocial as Fornecedor,
    pj.CNPJ,
    p.NomeProduto as Produto
	from Fornecedor f
	inner join PessoaJuridica pj on f.idPessoa = pj.idPessoa
	inner join ProdutoFornecedor pf on f.idFornecedor = pf.idFornecedor
	inner join Produto p on pf.idProduto = p.idProduto
	order by f.idFornecedor, p.NomeProduto;

-- delete from Pessoa where idPessoa between 11 and 20; 
  
-- Inserindo dados nas Tabelas Pessoa > Física e Jurídica
select * from Pessoa;
select * from PessoaFisica;
select * from PessoaJuridica;

-- Recuperar dados de pessoa física
select p.idPessoa, pf.idPessoa, pf.nome, pf.CPF, p.endereço, p.contato, 'Física' as Tipo 
	from PessoaFisica pf 
    join Pessoa p on p.idPessoa = pf.idPessoa;

select p.idPessoa, pf.idPessoa, pf.nome, pf.CPF, p.endereço, p.contato, 'Física' as Tipo 
	from PessoaFisica pf 
	join Pessoa p on p.idPessoa = pf.idPessoa where p.idPessoa = 1;
    
select 
	Pessoa.idPessoa, Pessoa.endereço, Pessoa.contato,
	PessoaFisica.nome, PessoaFisica.CPF
	from 
	PessoaFisica 
    join Pessoa on Pessoa.idPessoa = PessoaFisica.idPessoa;    

-- Recuperar dados de pessoa jurídica | RazaoSocial, NomeFantasia, CNPJ, contato
select p.idPessoa, pj.CNPJ, pj.RazaoSocial, p.endereço, p.contato, 'Jurídica' as Tipo 
	from PessoaJuridica pj join Pessoa p on p.idPessoa = pj.idPessoa;

select p.idPessoa, pj.idPessoa, pj.RazaoSocial, pj.CNPJ,  p.endereço, p.contato, 'Jurídica' as Tipo 
	from PessoaJuridica pj join Pessoa p on p.idPessoa = pj.idPessoa where p.idPessoa between 6 and 10;

-- Trazer todas as informações de PF,PF sem organizar colunas
select 
    p.idPessoa,
    pf.nome,
    pf.CPF,
    pj.razaoSocial,
    pj.CNPJ,
    p.endereço
	from Pessoa p -- SUPERCLASSE
	left join PessoaFisica pf 
		on p.idPessoa = pf.idPessoa
	left join PessoaJuridica pj 
		on p.idPessoa = pj.idPessoa;

-- Trazer todas as informações de PF,PF informando quem é PF e PJ organizar colunas
select 
    p.idPessoa,
    CASE 
        WHEN pf.idPessoa IS NOT NULL THEN 'Física'
        WHEN pj.idPessoa IS NOT NULL THEN 'Jurídica'
        ELSE 'Não especificado'
    END AS TipoPessoa,
    pf.nome,
    pf.CPF,
    pj.razaoSocial,
    pj.CNPJ,
    p.endereço
		from Pessoa p -- SUPERCLASSE
		left join PessoaFisica pf 
			on p.idPessoa = pf.idPessoa
		left join PessoaJuridica pj 
			on p.idPessoa = pj.idPessoa;
 
-- Trazer todas as informações de PF,PF e informando quem é PF e PJ
select 
    p.idPessoa,
    pf.nome as NomeOuRazao,
    pf.CPF as Documento,
    p.endereço,
    p.contato,
    'Física' as Tipo
from Pessoa p
inner join PessoaFisica pf on p.idPessoa = pf.idPessoa

union all

select 
    p.idPessoa,
    pj.razaoSocial AS NomeOuRazao,
    pj.CNPJ AS Documento,
    p.endereço,
    p.contato,
    'Jurídica' AS Tipo
from Pessoa p
inner join PessoaJuridica pj on p.idPessoa = pj.idPessoa; 

-- Recupera produto em estoque      
SELECT p.idProduto, p.NomeProduto AS Produto, e.Local AS Estoque, pe.Quantidade
	FROM Produto_em_Estoque pe
	JOIN Produto p on pe.idProduto = p.idProduto
	JOIN Estoque e on pe.idEstoque = e.idEstoque
	WHERE p.idProduto = 3;

select p.idProduto, p.NomeProduto as Produto, e.Local as Estoque, pe.Quantidade
	from Produto_em_Estoque pe
	join Produto p on pe.idProduto = p.idProduto
	join Estoque e on pe.idEstoque = e.idEstoque;
    
-- Recupera quantidade vendida por vendedor
select v.idVendedor, pf.Nome as NomeVendedor, pr.NomeProduto as Produto, vp.prodQuantidade as Quantidade from Vendedor v
	inner join PessoaFisica pf on v.idPessoa = pf.idPessoa
	inner join ProdutoVendedor vp on v.idVendedor = vp.idVendedor
	inner join Produto pr on pr.idProduto = vp.idProduto
	order by pf.nome, pr.nomeProduto;

select v.idVendedor, pf.Nome as NomeVendedor, pr.NomeProduto as Produto, vp.prodQuantidade as Quantidade from Vendedor v
	inner join PessoaFisica pf on v.idPessoa = pf.idPessoa
	inner join ProdutoVendedor vp on v.idVendedor = vp.idVendedor
	inner join Produto pr on pr.idProduto = vp.idProduto
	order by vp.prodQuantidade;
    
select * from ProdutoVendedor;    
select v.idVendedor, pf.Nome as NomeVendedor, count(*) as QtdVendas 
FROM Vendedor v
	inner join PessoaFisica pf on v.idPessoa = pf.idPessoa
	inner join ProdutoVendedor pv on v.idVendedor = pv.idVendedor
	group by pv.idVendedor;    
    
-- Verificando quanto cada vendedor vendeu
select 
    v.idVendedor,
    pf.nome as NomeVendedor,
    pf.CPF,
    p.endereço,
    (
        select SUM(pr.Valor * pv.prodQuantidade)
        from ProdutoVendedor pv
        join Produto pr on pv.idProduto = pr.idProduto
        where pv.idVendedor = v.idVendedor
    ) as ValorTotalVendas
from Vendedor v
join Pessoa p on v.idPessoa = p.idPessoa
join PessoaFisica pf on p.idPessoa = pf.idPessoa;







