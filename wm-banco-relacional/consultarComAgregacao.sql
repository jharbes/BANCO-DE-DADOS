select
    regiao as 'Região',
    sum(populacao) as Total -- função sum de somatorio nativa do mysql
from estados group by regiao
order by Total desc;

/*

Resultado do query acima:

Região	Total
Sudeste	86.96
Nordeste	57.26
Sul	29.65
Norte	17.93
Centro-Oeste	15.87

*/

select sum(populacao) as Total from estados;

/*

Resultado do query acima:

Total
207.67

*/

select avg(populacao) as Média from estados; -- função avg de média nativa do mysql

/*

Resultado do query acima:

Média
7.691481

*/