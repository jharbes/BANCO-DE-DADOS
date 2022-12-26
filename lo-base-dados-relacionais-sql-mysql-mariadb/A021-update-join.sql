-- Atualiza registros com joins
-- join e inner join funcionam da mesma maneira

select u.first_name, p.bio from users u
join profiles as p
on p.user_id = u.id
where u.first_name = 'Katelyn';



update users as u
join profiles as p
on p.user_id = u.id
set p.bio =  CONCAT(p.bio, ' atualizado') 
where u.first_name = 'Katelyn';