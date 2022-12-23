-- Apaga registros com joins


select u.first_name, p.bio from users u
left join profiles as p
on p.user_id = u.id
where u.first_name = 'Katelyn';


-- nesse caso com o p, u os dois registros serao deletados, tanto da tabela profiles quanto da tabela users
-- caso fosse necessario deletar registro de apenas uma tabela teriamos colocado p ou u apenas
delete p, u from users u 
left join profiles as p
on p.user_id = u.id
where u.first_name = 'Katelyn';
