-- insert select
-- insere valores em uma tabela usando outra
-- importante que serao incluidos valores para todas as linhas da tabela users


insert into profiles
(bio, description ,user_id)
select 'bio', 'description', id from users; -- Aqui faremos a insercao de dados na tabela profiles, onde o campo bio tera a palavra bio, o campo description tera a palavra description e o campo user_id tera a id de cada user


insert into profiles
(bio, description, user_id)
select 
concat('Bio de ', first_name), 
concat('Description de', ' ', first_name), 
id 
from users;