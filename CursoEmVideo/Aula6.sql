alter table pessoas
add column profissao varchar(10) after nome;

ALTER TABLE pessoas RENAME TO gafanhotos;

alter table pessoas
drop column profissao;

alter table pessoas
add codigo int first;

alter table pessoas
modify profissao varchar(20) not null default '';

alter table pessoas
change nascimesto nascimento date;

desc pessoas;

select * from pessoas;