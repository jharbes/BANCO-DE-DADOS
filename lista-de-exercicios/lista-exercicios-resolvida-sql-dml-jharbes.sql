/*

Manipulação de Dados Utilizando o SQL
1. Para o modelo abaixo:

*/

-- i. Listar todos os alunos que comecem com a letra K.

SELECT * FROM aluno WHERE nome LIKE 'a%';



-- ii. Listar o quantitativo de cursos existentes.

select count(*) as totalCursos from curso;



-- iii. Listar todos os cursos que tenham grade no ano de 2020.

SELECT g.ano, c.nome FROM grade g, curso c WHERE g.idCurso=c.idCurso;



-- iv. Informar quantas grades o curso de Engenharia Inform´atica possui.

