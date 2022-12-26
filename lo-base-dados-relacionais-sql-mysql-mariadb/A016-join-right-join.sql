-- Nesse caso ele retornara todos os registros da tabela profiles (right)
-- mesmo que eles nao tenham nenhuma ligacao com a tabela users (left)
-- nesses ultimos casos ele retornara o vinculo como nulo

-- IMPORTANTE***: ele ainda retorna a consulta de users, mas a preferencia eh apenas pela tabela profiles,
-- ou seja, ele so retornara de users aqueles que tiverem ligacao com profiles, de profiles retornara tudo.


SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
RIGHT JOIN profiles p
ON u.id = p.user_id;