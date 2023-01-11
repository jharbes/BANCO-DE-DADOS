select distinct c.nome as curso, a.nome
from grade g, aluno a, curso c, matricula m 
where 	a.idAluno = m.idAluno and
	m.idGrade = g.idGrade and
	c.idCurso = g.idCurso and
	c.nome = "Engenharia Informática" and
	g.ano = 2020;

select nome 
from aluno 
where 	nome like 'T%';

select m.matricula, g.ano, g.chTotal, c.nome 
from matricula m, grade g, curso c, aluno a
where 	a.idAluno = m.idAluno and
	m.idGrade = g.idGrade and
	c.idCurso = g.idCurso and
	a.nome = 'Kate Chienne';

select d.nome as Disciplina
from disciplina d, pre_requisito pr 
where 	d.idDisciplina = pr.posterior and 
	pr.idAnterior = (select idDisciplina from disciplina where nome = 'Banco de Dados');

select a.nome, h.status, h.data, d.nome as disciplina
from aluno a, matricula m, historico h, disciplina d
where 	a.idAluno = m.idAluno and
	m.matricula = h.matricula and
    d.idDisciplina = h.idDisciplina and
	h.status = 'Reprovado' and
	m.matricula = 'TPSI2020038';

select a.nome, count(*) numero_de_aprovacoes
from aluno a, matricula m, historico h
where 	a.idAluno = m.idAluno and
	m.matricula = h.matricula and
	h.status = 'aprovado' and
	m.matricula = 'EINF2010010';

select cr.nome as curso, count(*) numero_de_disciplinas, g.ano
from disciplina d, composta c, grade g, curso cr
where 	d.idDisciplina = c.idDisciplina and
	c.idGrade = g.idGrade and
	g.idCurso = cr.idCurso and
	g.ano = 2020 and
	cr.nome = 'Gestão de Marketing';

select distinct a.nome
from aluno a, matricula m, grade g, historico h
where 	a.idAluno = m.idAluno and
	m.idGrade = g.idGrade and
	h.matricula = m.matricula;

select cr.nome as curso, g.ano as ano_grade, count(c.idGrade) as numero_de_disciplinas
from curso cr, grade g, composta c
where 	cr.idCurso = g.idCurso and
		c.idGrade = g.idGrade
        group by (c.idGrade);

select a.nome from aluno a 
inner join matricula m on (a.idAluno = m.idAluno)
inner join historico h on (m.matricula = h.matricula)
inner join grade g on (g.idGrade = m.idGrade)
inner join curso cr on (cr.idCurso = g.idCurso)
where cr.nome = 'Engenharia Informática' and h.status = 'Reprovado'
group by (a.nome) having count(*) > 5