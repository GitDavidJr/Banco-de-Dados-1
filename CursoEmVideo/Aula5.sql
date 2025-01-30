(id, nome, nascimento, sexo, peso, altura, nacionalidade)

('1', 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');


insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
('1', 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', default);

insert into pessoas values
(default, 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', default);

insert into pessoas values
(default, 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', default),
(DEFAULT, 'Lucas Oliveira', '1990-06-12', 'M', '78.4', '1.80', DEFAULT),  
(DEFAULT, 'Fernanda Lima', '1998-09-23', 'F', '55.2', '1.65', DEFAULT),  
(DEFAULT, 'João Pedro', '1985-02-17', 'M', '90.1', '1.82', DEFAULT),  
(DEFAULT, 'Mariana Costa', '2000-12-05', 'F', '62.7', '1.70', DEFAULT),  
(DEFAULT, 'Ricardo Alves', '1993-04-30', 'M', '85.0', '1.78', DEFAULT); 


select * from pessoas;