-- 1. Quais os cursos do departamento de Engenharias?
SELECT c.nome AS Curso
FROM Curso c
JOIN Departamento d ON c.id_departamento = d.id
WHERE d.nome = 'Engenharias';

-- 2. Quantos cursos têm o departamento de Engenharias?
SELECT COUNT(*) AS Quantidade_Cursos
FROM Curso c
JOIN Departamento d ON c.id_departamento = d.id
WHERE d.nome = 'Engenharias';

-- 3. Qual a quantidade de curso por departamento?
SELECT d.nome AS Departamento, COUNT(c.id) AS Quantidade_Cursos
FROM Curso c
JOIN Departamento d ON c.id_departamento = d.id
GROUP BY d.nome;

-- 4. Quais os alunos (matricula, nome e sexo) do curso Sistemas de Informação? Utilizar junção.
SELECT a.matricula, a.nome, a.sexo
FROM Aluno a
JOIN Matricula m ON a.matricula = m.matricula_aluno
JOIN Curso c ON m.id_curso = c.id
WHERE c.nome = 'Sistemas de Informação';

-- 5. Quais os alunos (matricula, nome e sexo) do curso Sistemas de Informação? Utilizar subconsulta.
SELECT matricula, nome, sexo
FROM Aluno
WHERE matricula IN (
    SELECT matricula_aluno FROM Matricula
    WHERE id_curso = (SELECT id FROM Curso WHERE nome = 'Sistemas de Informação')
);

-- 6. Quantos alunos são do departamento de Engenharias? Utilizar subconsulta.
SELECT COUNT(*) AS Quantidade_Alunos
FROM Aluno
WHERE matricula IN (
    SELECT matricula_aluno FROM Matricula
    WHERE id_curso IN (SELECT id FROM Curso WHERE id_departamento = (SELECT id FROM Departamento WHERE nome = 'Engenharias'))
);

-- 7. Quantos alunos são do departamento de Engenharias? Utilizar junção.
SELECT COUNT(a.matricula) AS Quantidade_Alunos
FROM Aluno a
JOIN Matricula m ON a.matricula = m.matricula_aluno
JOIN Curso c ON m.id_curso = c.id
JOIN Departamento d ON c.id_departamento = d.id
WHERE d.nome = 'Engenharias';

-- 8. Qual a quantidade de alunos matriculados por curso?
SELECT c.nome AS Curso, COUNT(m.matricula_aluno) AS Quantidade_Alunos
FROM Curso c
JOIN Matricula m ON c.id = m.id_curso
GROUP BY c.nome;

-- 9. Quais os alunos (matricula, nome e sexo) do curso Engenharia Ambiental? Utilizar subconsulta.
SELECT matricula, nome, sexo
FROM Aluno
WHERE matricula IN (
    SELECT matricula_aluno FROM Matricula
    WHERE id_curso = (SELECT id FROM Curso WHERE nome = 'Engenharia Ambiental')
);

-- 10. Quais os alunos (matricula, nome e sexo) do curso Engenharia Ambiental? Utilizar o operador Join.
SELECT a.matricula, a.nome, a.sexo
FROM Aluno a
JOIN Matricula m ON a.matricula = m.matricula_aluno
JOIN Curso c ON m.id_curso = c.id
WHERE c.nome = 'Engenharia Ambiental';

-- 11. Quais os alunos ficaram com nota abaixo de 5?
SELECT a.nome, n.nota
FROM Aluno a
JOIN Matricula m ON a.matricula = m.matricula_aluno
JOIN Nota n ON m.id = n.id_matricula
WHERE n.nota < 5;

-- 12. Quais os alunos (nome e nota) ficaram com nota acima de 7 na Disciplina Estrutura de Dados?
SELECT a.nome, n.nota
FROM Aluno a
JOIN Matricula m ON a.matricula = m.matricula_aluno
JOIN Nota n ON m.id = n.id_matricula
JOIN Disciplina d ON n.id_disciplina = d.id
WHERE d.nome = 'Estrutura de Dados' AND n.nota > 7;

-- 13. Qual o departamento do curso Sistemas de Informação?
SELECT d.nome AS Departamento
FROM Departamento d
JOIN Curso c ON d.id = c.id_departamento
WHERE c.nome = 'Sistemas de Informação';

-- 14. Quais os telefones do aluno Gustavo?
SELECT t.telefone
FROM Telefone t
JOIN Aluno a ON t.matricula_aluno = a.matricula
WHERE a.nome = 'Gustavo';

-- 15. Quais os alunos têm telefones iguais?
SELECT t.telefone, GROUP_CONCAT(a.nome SEPARATOR ', ') AS Alunos
FROM Telefone t
JOIN Aluno a ON t.matricula_aluno = a.matricula
GROUP BY t.telefone
HAVING COUNT(t.telefone) > 1;

-- 16. Quantos alunos têm mais de um telefone?
SELECT COUNT(*) AS Quantidade_Alunos
FROM (
    SELECT matricula_aluno
    FROM Telefone
    GROUP BY matricula_aluno
    HAVING COUNT(telefone) > 1
) AS Subquery;
