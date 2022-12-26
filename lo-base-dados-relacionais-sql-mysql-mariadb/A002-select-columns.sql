-- seleciona todas as colunas

SELECT * from users;

-- seleciona algumas colunas na ordem solicitada

select email, id, first_name from users;

-- Seleciona colunas, criando um apelido para a tabela users como u

select 
u.email uemail, u.id uid, u.first_name ufirst_name
from users as u;