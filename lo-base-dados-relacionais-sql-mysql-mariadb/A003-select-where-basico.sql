-- where filtra registros
-- operadores de comparação = < <= > >= <> !=
-- operadores lógicos and e or

/*
Importante fazer o comando select antes sempre de um update ou delete, assim podemos 
diminuir a probabilidade de incorrer em erros fazendo alteracoes em registros que nao gostariamos
que fossem feitos.
*/

select * from users
where 
created_at < '2020-12-15 23:33:41'
and first_name = 'Luiz' 
and password_hash = 'a_hash';