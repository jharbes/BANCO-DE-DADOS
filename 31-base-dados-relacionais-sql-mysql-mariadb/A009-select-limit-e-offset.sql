-- limit limita a qtd de valores
-- offset desloca o cursor para exibir os resultados


select id, first_name, email as uemail 
from users
where id between 100 and 150
order by id asc
limit 9; -- nesse caso o resultado sera limitado pelos primeiros nove resultados da consulta


select id, first_name, email as uemail 
from users
where id between 100 and 150
order by id asc
limit 9 offset 3; -- nesse caso o resultado serao os 9 proximos resultados, porem o offset fara o deslocamento do resultado em 3 elementos, ou seja, na pratica, nesse caso, o resultado comecara no 4o elemento da consulta original


select id, first_name, email as uemail 
from users
where id between 100 and 150
order by id asc
limit 3,9; -- Nesse exemplo é igual ao anterior mas simplificado, lembrando que nesse caso o offset vem antes do limit