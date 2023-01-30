create table turma (
id_turma int primary key not null auto_increment,
id_aluno int not null,
id_professor int not null,
id_disciplina int not null
)default charset = utf8;

create table disciplina (
id_disciplina int primary key not null auto_increment,
id_turma int not null,
id_professor int not null,
coordenador varchar (45)
)default charset = utf8;

create table professor (
id_professor int primary key not null auto_increment,
id_turma int not null,
nome varchar (50),
cpf varchar (12)
)default charset = utf8; 

create table curso (
id_curso int primary key not null auto_increment,
id_disciplina int not null,
matricula int not null,
nome varchar (50)
)default charset = utf8;

create table aluno (
id_aluno int primary key not null auto_increment,
id_disciplina varchar (25),
nome varchar (50),
cpf varchar (12)
)default charset = utf8;

alter table turma add foreign key (id_aluno) references aluno (id_aluno);
alter table turma add foreign key (id_professor) references professor (id_professor);
alter table turma add foreign key (id_disciplina) references disciplina (id_disciplina);
alter table disciplina add foreign key (id_turma) references turma (id_turma);
alter table disciplina add foreign key (id_professor) references professor (id_professor);
alter table professor add foreign key (id_turma) references turma (id_turma);
alter table turma add foreign key (id_aluno) references aluno (id_aluno);
alter table curso add foreign key (id_disciplina) references disciplina (id_disciplina)