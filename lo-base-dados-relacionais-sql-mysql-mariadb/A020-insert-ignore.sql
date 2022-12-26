-- Ignora erros
-- Nessa inclusao, as vezes era incluido registros com id primario (conjugado) duplicado, com o ignore podemos
-- apenas ignorar essas inclusoes erradas cancelando-as e seguindo em frente com as demais inclusoes


insert ignore into users_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users order by rand() limit 5;




