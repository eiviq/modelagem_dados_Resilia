# Modelando um banco de dados proposto pela Resilia.

Projeto individual proposto pela Resilia para o módulo IV. A proposta é modelar um banco de dados que armazene dados das entidades: curso, turma e alunos.

<b>⇨</b> Existem outras entidades além dessas três?
<br>
- Sim, foi criada a Entidade <b>professor</b>.

<b>⇨</b> Quais são os principais campos e tipos?
- Os principais campos são: curso, turma, professor e alunos.

<b>⇨</b> Como essas entidades estão relacionadas?
<br>
- <b>Aluno</b> se relaciona com <b>turma<b> através da entidade <b>turma_aluno</b>, e <b>turma</b> se relaciona com <b>professor </b> e <b>curso.</b>

## Dentro das Entidades, foram distribuídos os seguintes Atributos:

Curso: Id, Id_professor, carga horária e disciplina.

Turma: ID, ID_Curso, turno e salas.

Professores: ID, nome, CPF e salário.

Alunos: ID, matrícula, nome e CPF.

<img src="https://i.ibb.co/qYB9Fc2/diagrama-modelagemdados.png">


