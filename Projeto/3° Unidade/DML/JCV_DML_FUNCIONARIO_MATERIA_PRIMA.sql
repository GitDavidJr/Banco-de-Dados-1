INSERT INTO funcionario (nome, cpf, telefone, endereco, tempo_experiencia_profissional_ano, especializacao, funcionario_tipo) VALUES
('João Silva', '12345678901', '11987654321', 'Rua A, 123', 3, 'Vendas', 'vendedor'),
('Maria Oliveira', '23456789012', '11976543210', 'Rua B, 456', 5, 'Vendas', 'vendedor'),
('Carlos Pereira', '34567890123', '11965432109', 'Rua C, 789', 4, 'Vendas', 'vendedor'),
('Ana Souza', '45678901234', '11954321098', 'Rua D, 101', 2, 'Vendas', 'vendedor'),
('Pedro Santos', '56789012345', '11943210987', 'Rua E, 112', 7, 'Marketing', 'produtor'),
('Juliana Lima', '67890123456', '11932109876', 'Rua F, 223', 6, 'Criação de Conteúdo', 'produtor'),
('Ricardo Gomes', '78901234567', '11921098765', 'Rua G, 334', 8, 'Gestão de Projetos', 'produtor'),
('Larissa Rocha', '89012345678', '11910987654', 'Rua H, 445', 4, 'Desenvolvimento', 'produtor'),
('Felipe Almeida', '90123456789', '11909876543', 'Rua I, 556', 9, 'Design Gráfico', 'produtor'),
('Tatiane Costa', '01234567890', '11908765432', 'Rua J, 667', 10, 'Gestão de Equipe', 'produtor');

select * from funcionario;

INSERT INTO materia_prima (nome, valor_unit, qtd_minima, qtd_maxima) VALUES
('Material de Alumínio Composto (ACM)', 450.00, 1, 100), 
('Metalon 20x20 na chapa 18', 50.00, 1, 100), 
('Metalon 20x30 na chapa 18', 60.00, 1, 100), 
('Lona de Impressão Digital', 700.00, 1, 100), 
('Adesivo Vinil', 425.00, 1, 100),
('Adesivo Impressão Digital', 530.00, 1, 100), 
('Policarbonato', 450.00, 1, 100),
('Poliestireno Extrudado (XPS)', 79.00, 1, 100), 
('Acrílico Cast Cristal 2mm', 219.00, 1, 100), 
('PVC Expandido 2mm', 69.00, 1, 100); 

-- foi adicionado mais 50 metalons de cada tipo pois faltou no estoque
update materia_prima 
set qtd_maxima = 150
where nome like '%metalon%';


desc materia_prima;
select * from materia_prima;