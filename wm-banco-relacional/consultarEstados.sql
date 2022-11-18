select * from estados;

select nome,sigla from estados;

select sigla,nome as 'Nome do Estado' from estados; -- altera o nome para 'Nome do Estado' na saida dos dados

select sigla,nome as 'Nome do Estado' from estados -- altera o nome bem como filtra apenas estados da regiao sul
where regiao='Sul'; -- funciona para sul com S minusculo ou maiusculo sem diferenca

select nome,regiao from estados where populacao>=10
order by populacao; -- nesse caso ira ordenar em ordem crescente (comeca com o menor)

select nome,regiao from estados where populacao>=10
order by populacao desc; -- nesse caso ira ordenar em ordem decrescente (comeca com o maior)

select 
    nome,
    regiao,
    populacao
from estados where populacao>=10
order by populacao desc;