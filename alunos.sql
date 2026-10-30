create table alunos (
    id int primary key auto_increment,
    nome varchar(100) not null,
    idade int not null,
    curso varchar(100) not null
);

insert into alunos (id, nome, idade, curso) values
(1, 'João Silva', 20, 'Engenharia'),
(2, 'Maria Souza', 22, 'Medicina'),
(3, 'Carlos Pereira', 21, 'Direito'),
(4, 'Ana Costa', 23, 'Arquitetura'),
(5, 'Pedro Lima', 19, 'Ciência da Computação');

select * from alunos;

update alunos set idade = 21 where nome = 'Carlos Pereira';

delete from alunos where id = 5;

-- tentativa de realizar o desafio do professor --

select nome = 'João Silva' from alunos;