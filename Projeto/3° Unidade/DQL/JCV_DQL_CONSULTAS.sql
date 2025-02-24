-- faturamento total no ano de 2025
select sum(pedido.valor_total) as faturamento 
from pedido
where year(data_criacao) = 2025;

-- custo de mao de obra no ano de 2025
select sum(custo_mao_de_obra) as 'custo mao de obra' 
from produz
join produto
on produto.codigo = produz.fk_produto_codigo
join pedido
on pedido.numero_do_pedido = fk_pedido_numero_do_pedido
where year(data_criacao) = 2025;

-- custo materia prima
select sum(valor_unit) as 'custo materia prima' 
from materia_prima
join composicao
on composicao.fk_materia_prima_cod_materia_prima = materia_prima.cod_materia_prima
join produto
on produto.codigo = composicao.fk_produto_codigo
join pedido
on pedido.numero_do_pedido = produto.fk_pedido_numero_do_pedido
where year(data_criacao) = 2025;

-- lucro total
select sum(pedido.valor_total) - ((select sum(custo_mao_de_obra) from produz) + (select sum(valor_unit) from materia_prima)) as lucro
from pedido
where year(data_criacao) = 2025;

-- media de valor das vendas
select avg(pedido.valor_total) as 'media de preco dos pedidos'
from pedido
where year(data_criacao) = 2025;

-- vendas por funcionarios
select funcionario.nome as 'vendedor', sum(pedido.valor_total) as 'total de venda'
from funcionario
join pedido
on pedido.fk_vendedor_id = funcionario.id
group by funcionario.nome
order by 'total de venda' desc;

-- vendas acima de 1000 reais
select count(*) as 'vendas acima de 1000 reais'
from pedido
where valor_total > 1000 and year(data_criacao) = 2025;

-- clientes que gastaram mais de 1000 reais
select clientes.nome as cliente, count(pedido.numero_do_pedido) as pedidos
from clientes
join pedido
on pedido.fk_cliente_id = clientes.id
where pedido.valor_total > 1000
group by clientes.nome
order by clientes.nome;

-- produtos em produção relacionada com cada cliente
select clientes.nome as clientes, produto.descricao as produto
from clientes
join pedido
on  pedido.fk_cliente_id = clientes.id
join produto
on produto.fk_pedido_numero_do_pedido = pedido.numero_do_pedido;

-- qual produto cada funcionario esta responsavel
select funcionario.nome as produtor, produto.descricao as produto
from funcionario
join produz
on produz.fk_funcionario_id = funcionario.id
join produto
on produto.codigo = produz.fk_produto_codigo;

-- estoque
select materia_prima.nome as 'materia prima', 
	   (materia_prima.qtd_maxima - sum(composicao.quantidade_materia_prima)) as qtd_disponivel
from materia_prima
join composicao
on composicao.fk_materia_prima_cod_materia_prima = materia_prima.cod_materia_prima
group by materia_prima.nome
order by qtd_disponivel;

select * from produto;

select p.nome as 'Precisa de Metalon' from produto p
join composicao c
on c.fk_produto_codigo = p.codigo
join materia_prima m
on m.cod_materia_prima = c.fk_materia_prima_cod_materia_prima
where m.nome like '%metalon%'
group by p.nome;





