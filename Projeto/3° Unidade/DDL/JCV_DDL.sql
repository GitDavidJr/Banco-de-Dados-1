create database if not exists JCV 
default character set utf8mb4
default collate utf8mb4_unicode_ci;

create table clientes (
id int auto_increment,
nome varchar(50) not null,
cpf char(11) not null,
telefone varchar(11) not null,
logradouro varchar(50) not null,
cidade varchar(50) not null,
bairro varchar(50) not null,
numero char(6) not null,
cep char(8) not null,
email varchar(50) not null,
primary key (id)
) default charset = utf8mb4;

create table pedido(
numero_do_pedido varchar(50),
status_pedido ENUM('em produção', 'em separação', 'enviado') NOT NULL default 'em produção',
data_criacao datetime not null,
desconto decimal(8,2) CHECK (desconto >= 0),
valor_total decimal(8,2) CHECK (valor_total >= 0),
fk_cliente_id int,
forma_pagamento enum('pix', 'cartao de credito', 'fisico') not null,
status_de_pagamento enum('pago', 'pendente') not null,
fk_vendedor_id int,
comissao decimal(8,2) CHECK (comissao >= 0) default = (valor_total*0.027),
primary key(numero_do_pedido)
) default charset = utf8mb4;

create table produto(
codigo int auto_increment,
nome varchar(50),
descricao text,
status_produto enum ('em producao', 'concluido') not null default 'em producao',
valor_unitario_total decimal (8,2) check (valor_unitario_total > 0) not null,
fk_pedido_numero_do_pedido varchar(50),
primary key(codigo)
) default charset = utf8mb4;

create table funcionario(
id int auto_increment,
nome varchar(50) not null,
cpf char(11) not null,
telefone varchar(11) not null,
endereco varchar(50) not null,
tempo_experiencia_profissional_ano int check (tempo_experiencia_profissional_ano > 0) not null,
especializacao varchar(50) not null,
funcionario_tipo enum ('vendedor', 'produtor') not null,
primary key (id)
) default charset = utf8mb4;

create table materia_prima(
cod_materia_prima int auto_increment,
nome varchar(50) not null,
valor_unit decimal(7,2) check(valor_unit > 0),
qtd_minima int check(qtd_minima>0),
qtd_maxima int check(qtd_maxima>0),
primary key(cod_materia_prima)
) default charset = utf8mb4;

create table produz(
fk_funcionario_id int,
fk_produto_codigo int,
custo_mao_de_obra decimal(6,2) check(custo_mao_de_obra>0)
) default charset = utf8mb4;

create table composicao(
fk_produto_codigo int,
fk_materia_prima_cod_materia_prima int,
quantidade_materia_prima int check(quantidade_materia_prima>0) not null
) default charset = utf8mb4;


alter table pedido add foreign key(fk_cliente_id) references clientes(id);

alter table pedido add foreign key(fk_vendedor_id) references funcionario(id);

alter table produto add foreign key(fk_pedido_numero_do_pedido) references pedido(numero_do_pedido);

alter table produz add foreign key(fk_funcionario_id) references funcionario(id);

alter table produz add foreign key(fk_produto_codigo) references produto(codigo);

alter table composicao add foreign key(fk_produto_codigo) references produto(codigo);

alter table composicao add foreign key(fk_materia_prima_cod_materia_prima) references materia_prima(cod_materia_prima);