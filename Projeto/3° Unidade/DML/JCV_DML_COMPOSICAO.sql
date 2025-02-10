select nome from produto group by nome;

select codigo from produto where nome like '%lona%';

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(3, 5, 2),
(3, 6, 1),
(13, 5, 3),
(13, 6, 2),
(18, 5, 1),
(18, 6, 3),
(23, 5, 2),
(23, 6, 1),
(29, 5, 3),
(29, 6, 2),
(34, 5, 1),
(34, 6, 3),
(38, 5, 2),
(38, 6, 1),
(41, 5, 3),
(41, 6, 2),
(46, 5, 1),
(46, 6, 3),
(53, 5, 2),
(53, 6, 1),
(61, 5, 3),
(61, 6, 2),
(67, 5, 1),
(67, 6, 3),
(72, 5, 2),
(72, 6, 1),
(79, 5, 3),
(79, 6, 2);

select codigo from produto where nome like '%ACM%';

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(2, 1, 1),
(5, 1, 2),
(8, 1, 1),
(12, 1, 2),
(16, 1, 1),
(19, 1, 2),
(22, 1, 1),
(28, 1, 2),
(37, 1, 1),
(40, 1, 2),
(43, 1, 1),
(50, 1, 2),
(57, 1, 1),
(58, 1, 2),
(66, 1, 1),
(73, 1, 2);

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(2, 2, 3),
(2, 3, 5),
(5, 2, 4),
(5, 3, 6),
(8, 2, 2),
(8, 3, 5),
(12, 2, 3),
(12, 3, 6),
(16, 2, 4),
(16, 3, 2),
(19, 2, 5),
(19, 3, 3),
(22, 2, 6),
(22, 3, 4),
(28, 2, 5),
(28, 3, 3),
(37, 2, 6),
(37, 3, 4),
(40, 2, 3),
(40, 3, 5),
(43, 2, 4),
(43, 3, 2),
(50, 2, 6),
(50, 3, 5),
(57, 2, 3),
(57, 3, 4),
(58, 2, 2),
(58, 3, 6),
(66, 2, 4),
(66, 3, 5),
(73, 2, 6),
(73, 3, 3);

select nome,codigo from produto where nome like '%carro';

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(1, 5, 2),
(1, 6, 1),
(7, 5, 3),
(7, 6, 2),
(15, 5, 1),
(15, 6, 3),
(20, 5, 2),
(20, 6, 1),
(26, 5, 3),
(26, 6, 2),
(32, 5, 1),
(32, 6, 3),
(42, 5, 2),
(42, 6, 1),
(48, 5, 3),
(48, 6, 2),
(56, 5, 1),
(56, 6, 3),
(62, 5, 2),
(62, 6, 1),
(69, 5, 3),
(69, 6, 2),
(75, 5, 1),
(75, 6, 3),
(82, 5, 2),
(82, 6, 1);

select nome,codigo from produto where nome like '%vinil%';

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(4, 5, 2),
(17, 5, 3),
(27, 5, 1),
(36, 5, 4),
(47, 5, 5),
(59, 5, 6),
(74, 5, 2);

select nome,codigo from produto where nome like '%digital%';

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(6, 6, 2),
(11, 6, 4),
(21, 6, 3),
(30, 6, 1),
(54, 6, 5),
(65, 6, 6),
(80, 6, 2);

select nome,codigo from produto where nome like '%banner%'; 

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(9, 4, 2),
(25, 4, 1),
(35, 4, 2),
(44, 4, 1),
(51, 4, 2),
(64, 4, 1),
(71, 4, 2),
(78, 4, 1);

select nome,codigo from produto where nome like '%luminosa%'; 

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(10, 1, 2),
(33, 1, 3),
(45, 1, 1),
(52, 1, 2),
(63, 1, 3),
(70, 1, 1),
(77, 1, 2);

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(10, 2, 3),
(10, 3, 4),
(33, 2, 5),
(33, 3, 3),
(45, 2, 4),
(45, 3, 2),
(52, 2, 5),
(52, 3, 3),
(63, 2, 4),
(63, 3, 2),
(70, 2, 5),
(70, 3, 4),
(77, 2, 3),
(77, 3, 5);

select nome,codigo from produto where nome like '%policarbonato%'; 

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(14, 2, 3),
(14, 3, 4),
(24, 2, 5),
(24, 3, 2),
(31, 2, 4),
(31, 3, 3),
(39, 2, 2),
(39, 3, 5),
(49, 2, 3),
(49, 3, 4),
(55, 2, 5),
(55, 3, 2),
(60, 2, 4),
(60, 3, 3),
(68, 2, 5),
(68, 3, 2),
(76, 2, 4),
(76, 3, 5),
(81, 2, 3),
(81, 3, 4);

insert into composicao (fk_produto_codigo, fk_materia_prima_cod_materia_prima, quantidade_materia_prima) values
(14, 7, 2),
(24, 7, 1),
(31, 7, 3),
(39, 7, 2),
(49, 7, 1),
(55, 7, 3),
(60, 7, 2),
(68, 7, 1),
(76, 7, 3),
(81, 7, 2);

desc composicao;