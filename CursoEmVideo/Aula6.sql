alter table gafanhotos
add column profissao varchar(10) after nome;

ALTER TABLE pessoas RENAME TO gafanhotos;

alter table gafanhotos
drop column profissao;

alter table gafanhotos
add codigo int first;

alter table gafanhotos
modify profissao varchar(20) not null default '';

alter table gafanhotos
change nascimesto nascimento date;

desc gafanhotos;

select * from gafanhotos;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2016'
) default charset = utf8;

desc cursos;

alter table cursos add column idcurso int first;

alter table cursos add primary key(idcurso);

create table if not exists teste(teste int);

drop table teste;