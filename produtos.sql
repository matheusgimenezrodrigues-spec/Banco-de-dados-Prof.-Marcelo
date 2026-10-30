create table produtos (
    id int primary key auto_increment,
    nome varchar(100) not null,
    preco decimal(10, 2) not null,
    quantidade int not null
);

insert into produtos (id, nome, preco, quantidade) values
(1, 'Notebook', 2500.00, 10),
(2, 'Smartphone', 1500.00, 20),
(3, 'Tablet', 800.00, 15),
(4, 'Monitor', 600.00, 8),
(5, 'Teclado', 100.00, 30);

select * from produtos;

update produtos set preco = 1400.00 where nome = 'Smartphone';

delete from produtos where id = 5;

-- tentativa de realizar o desafio do professor --

select 
    nome,
    quantidade,
    preco,
    (quantidade * preco) as valor_total
from 
    produtos
where 
    quantidade > 5
    