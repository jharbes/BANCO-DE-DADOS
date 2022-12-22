/*

Manipulação de Dados Utilizando o SQL
1. Para o modelo abaixo:

*/

-- i. Listar todos os alunos que comecem com a letra K.

SELECT * FROM aluno WHERE nome LIKE 'a%';



-- ii. Listar o quantitativo de cursos existentes.

select count(*) as totalCursos from curso;



-- iii. Listar todos os cursos que tenham grade no ano de 2020.

SELECT g.ano, c.nome FROM grade g, curso c WHERE g.idCurso=c.idCurso and g.ano=2020;



-- iv. Informar quantas grades o curso de Engenharia Informática possui.

select count(*) as totalRegistros from grade g, curso c where g.idCurso=c.idCurso and c.nome='Engenharia Informática';



-- v. Contar quantas disciplinas existem na grade com idGrade 8.

select count(*) as totalDisciplinas from grade g, grade_disciplina gd where gd.idGrade=8;