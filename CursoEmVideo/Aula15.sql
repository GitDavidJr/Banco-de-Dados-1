alter table gafanhotos add column cursopreferido int;

alter table gafanhotos add foreign key (cursopreferido)
references cursos(idcurso);

select * from cursos;
select * from gafanhotos;

update gafanhotos set cursopreferido = '6' where id = '1';


select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos 
join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos 
left outer join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;