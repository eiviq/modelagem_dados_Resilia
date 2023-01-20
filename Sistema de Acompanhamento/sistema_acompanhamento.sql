create database sistema_acompanhamento;
USE sistema_acompanhamento;

CREATE TABLE professor (
id INT PRIMARY KEY auto_increment,
nome VARCHAR (40) NOT NULL,
cpf VARCHAR (20) NOT NULL,
salario INT NOT NULL
);

CREATE TABLE curso (
id INT PRIMARY KEY auto_increment,
id_professor INT NOT NULL,
carga_horaria INT NOT NULL,
disciplina VARCHAR (50) NOT NULL
);

CREATE TABLE turma (
id INT PRIMARY KEY auto_increment,
id_curso INT NULL ,
turno VARCHAR (30) NOT NULL,
sala INT NOT NULL
);

CREATE TABLE aluno (
id INT PRIMARY KEY auto_increment,
matricula INT NOT NULL,
nome VARCHAR (40) NOT NULL,
cpf VARCHAR(20) NOT NULL,
idade INT NOT NULL
);

CREATE TABLE aluno_turma (
id INT PRIMARY KEY auto_increment,
id_aluno INT NOT NULL,
id_turma INT NOT NULL 
);

ALTER TABLE curso
ADD CONSTRAINT id_fk_professor FOREIGN KEY (id_professor) REFERENCES professor(id);

ALTER TABLE turma
ADD CONSTRAINT id_fk_curso FOREIGN KEY (id_curso) REFERENCES curso(id);


ALTER TABLE aluno_turma
ADD CONSTRAINT id_fk_aluno FOREIGN KEY (id_aluno) REFERENCES aluno_turma(id);

ALTER TABLE aluno_turma
ADD CONSTRAINT id_fk_turma FOREIGN KEY (id_turma) REFERENCES aluno_turma(id);

insert into professor (nome,cpf,salario) 
values ("William", "123.456.789-10",3000);

insert into professor (nome,cpf,salario) 
values ("Paula", "146.246.375-54", 3000);

insert into professor (nome,cpf,salario) 
values ("Daniele", "151.381.827-90", 3000);

insert into curso (id_professor, carga_horaria, disciplina)
values (1, 120, "front-end");

insert into curso (id_professor, carga_horaria, disciplina)
values (2, 120, "back-end");

insert into curso (id_professor, carga_horaria, disciplina)
values (3, 60, "soft-skill");

insert into turma (id_curso, turno, sala)
values (1,"Manhã", 1020);

insert into turma (id_curso, turno, sala)
values (1,"Tarde", 2030);

insert into turma (id_curso, turno, sala)
values (2,"Manhã", 3020);

insert into turma (id_curso, turno, sala)
values (2,"Tarde", 2010);

insert into aluno (matricula, nome, cpf, idade)
values (105060, "Valesca Marinho", "138.928.358-38", 24);

insert into aluno (matricula, nome, cpf, idade)
values (708090, "Beatriz Anjos", "197.934.476-34", 19);

insert into aluno (matricula, nome, cpf, idade)
values (908070, "Juan Sayão", "151.381.827-90", 25);

insert into aluno (matricula, nome, cpf, idade)
values (605040, "Tainah Louise", "104.560.239-54", 28);

select * from curso;
insert into turma (id_curso, turno, sala) values (1,"Tarde", 2010)