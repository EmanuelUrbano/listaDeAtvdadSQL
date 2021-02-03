create database CURSO;
use CURSO;

create table tipo_prova(
cod_tipoP int(11) not null auto_increment,
nomeEtipoProva varchar(20),
primary key(cod_tipoP)
);

create table diciplinas(
cod_diciplina int(11) not null auto_increment,
nomeEdiciplina varchar(30),
primary key(cod_diciplina)
);

create table cursos(
cod_Curso int(11) not null auto_increment,
nomeECurso varchar(50),
primary key(cod_curso)
);
create table alunos(
Numero_matricula int(11) not null auto_increment,
nomeEAluno varchar(30),
email_aluno varchar(30),
DDD int(11),
telefone int(11),
cod_Curso int(11),
foreign key(cod_Curso) references cursos(cod_Curso),
primary key(Numero_matricula)
);


create table notas(
Numero_Matricula int(11),
Cod_Diciplina int(11),
Cod_tipoP int(11),
Nota float(4,2),
foreign key(Numero_Matricula) references alunos(Numero_Matricula),
foreign key(Cod_Diciplina) references diciplinas(Cod_Diciplina),
foreign key(Cod_tipoP) references tipo_prova(Cod_tipoP)
);

insert into cursos
(nomeECurso)  
values 
('Técnico em Informática integrado ao Ensino Médio'),('Técnico em Informática');

insert into diciplinas
(nomeEdiciplina)
values
('Informática'), ('Lógica 1'), ('Sistemas Computacionais'), ('Lógica 2'), ('Linguagem de Programação 1'), ('RdDeCmptdrsEIntrnt'), ('Banco de Dados');


insert into tipo_prova
(nomeEtipoProva)
values
('Parcial 1'),('Parcial 2'),('Parcial 3'), ('Recuperação Paralela'),  ('Recuperação final');

insert into alunos
(nomeEAluno, cod_Curso)
values
('aluno1', '2');

insert into notas
values('1', '14','1','6.5'),('1','11','3','7.0');

insert into alunos
(nomeEAluno, cod_Curso)
values
('aluno2', '1');

insert into notas
values('2', '13','2','5.5'),('2','10','1','7.3');
