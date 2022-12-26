-- Configura um salário aleatório para users

alter table base_de_dados.users add salary decimal(15,2); -- esse comando cria a coluna salario em users

update users set salary = round(rand() * 10000, 2); -- esse comando gera o valor aleatorio de salario para cada um dos users já que qualquer comando de update ou delete SEM WHERE afeta todos os registros da tabela em questao

select salary from users where 
salary BETWEEN 1000 and 1500
order by salary asc; -- aqui selecionamos todos os users com salario entre 1000 e 1500 ordenando os salarios em ordem crescente