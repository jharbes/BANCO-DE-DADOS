-- Order ordena valores:
-- order by id asc (id crescente)
-- order by id desc (id decrescente)
-- order by id asc, first_name desc (prioriza o id)


select id, first_name, email as uemail 
from users
where id between 100 and 150
order by first_name desc;


select id, first_name, email as uemail 
from users
where id between 100 and 150
order by first_name desc, last_name asc; -- nesse caso ele da prioridade para a primeira consulta (first name), levando em consideracao que hajam nomes iguais esses entao serao ordenados pelo ultimo nome de forma crescente.
