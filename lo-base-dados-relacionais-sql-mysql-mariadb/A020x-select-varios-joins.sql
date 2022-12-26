-- retorna id de users, first name de users, bio de profiles e role de cada um dos ids
-- importante lembrar que um id pode ter mais de um role (perfil)



SELECT u.id as uid, u.first_name, p.bio, r.name
FROM users as u
LEFT JOIN profiles as p ON u.id=p.user_id
inner join users_roles as ur on u.id=ur.user_id
inner join roles as r on ur.role_id=r.id
order by uid asc
;