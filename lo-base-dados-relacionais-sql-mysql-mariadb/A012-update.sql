-- Update - Atualiza registros


update users set 
first_name = 'Luiz',
last_name = 'Miranda'
where id between 119 and 121; -- nesse caso todos os registros onde o id for de 119 ate 121 terao seu primeiro nome mudado para Luiz e ultimo nome alterado para 'Miranda'

select * from users where id between 119 and 121;