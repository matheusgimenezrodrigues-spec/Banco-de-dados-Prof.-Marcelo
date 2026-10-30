create table funcionarios (
    id int primary key auto_increment,
    nome varchar(100) not null,
    idade int not null,
    cargo varchar(100) not null,
    salario decimal(10, 2) not null,
    admissao date not null
);

insert into funcionarios (id, nome, idade, cargo, salario, admissao) values
(1, 'Lucas Almeida', 30, 'Gerente', 5000.00, '2020-01-15'),
(2, 'Fernanda Lima', 28, 'Analista', 4000.00, '2019-03-10'),
(3, 'Rafael Santos', 35, 'Coordenador', 4500.00, '2018-07-22'),
(4, 'Juliana Oliveira', 32, 'Assistente', 3000.00, '2021-05-05'),
(5, 'Marcos Pereira', 29, 'Supervisor', 4200.00, '2020-11-30');

select * from funcionarios;

update funcionarios set salario = 5500.00 where nome = 'Lucas Almeida';

delete from funcionarios where id = 5;

-- tentativa de realizar o desafio do professor --

select cargo, AVG(salario) as media_salarial
from funcionarios
group by cargo
having AVG(salario) > 3000.00;
