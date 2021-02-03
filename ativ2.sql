create database bibli;

use bibli;
create table livros(
codLi int(11) not null auto_increment ,
titulo varchar(70),
primary key(codLi)
);

insert into livros(titulo) 
values 
('MYSQL: Projeto Modelagem e desenvolvimento de Banco de dados'),
('MYSQL e MSQL'),
('Como programar com ASP.NET e C#'),
('Entendendo e Dominando o Java para a Internet'),
('Aprendendo MySQL'),
('Java: Como Programar');

update livros set
titulo = 'Entendendo e dominando o Java (internet)'
where codli = 4;

delete from livros where codli = 2 && titulo = 'MYSQL e MSQL';