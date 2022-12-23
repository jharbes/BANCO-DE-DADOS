INSERT INTO users_roles (user_id, role_id)
VALUES
(518, 4);



SELECT user_id, role_id  from users_roles WHERE
user_id = 518 and role_id = 4;



select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users;



-- Aqui ele faz com que o que seriam os VALUES do insert passem a ser os resultados do primeiro select na primeira coluna (select id)
-- e o segundo select na segunda coluna, povoando assim a tabela  correndo id por id em user id e em role_id utilizando um valor de 
-- id randomica entre os existentes 
insert into users_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users;