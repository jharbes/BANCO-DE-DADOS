-- Nesse caso ele retornara todos os registros da tabela users (left)
-- mesmo que eles nao tenham nenhuma ligacao com a tabela profiles (right)
-- nesses ultimos casos ele retornara o vinculo como nulo

-- IMPORTANTE***: ele ainda retorna a consulta de profiles, mas a preferencia eh apenas pela tabela users,
-- ou seja, ele so retornara de profiles aqueles que tiverem ligacao com users, de users retornara tudo.


SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id;