select * from prefeitos;

select * from `cidades`;

/*
Os comandos presentes nesse arquivo foram utilizados no workbench pois o retorno
gerado no VSCode não estava de acordo com o esperado.
*/

select * from `cidades` c inner join prefeitos p on c.id=p.cidade_id;

select * from `cidades` c left join prefeitos p on c.id=p.cidade_id;

select * from `cidades` c left outer join prefeitos p on c.id=p.cidade_id; -- exatamente igual ao comando anterior

select * from `cidades` c right join prefeitos p on c.id=p.cidade_id;

select * from `cidades` c left join prefeitos p on c.id=p.cidade_id
union
select * from `cidades` c right join prefeitos p on c.id=p.cidade_id; -- no caso desse comando estamos emulando o full join que nao existe nativamente no mysql