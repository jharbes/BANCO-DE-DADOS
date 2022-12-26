-- in seleciona elementos entre todos os valores enviados e retornara os que forem verdadeiros (existirem), 
-- repare nos comandos abaixo, ambos possuem o mesmo resultado, o in serve para facilitar a escrita da consulta.


select * from users
where id=110 or id=115 or id=120 or id=125 or id= 130 or id=1000 or id=12200 or id=1212545
and first_name='Luiz' or first_name='Keelie';


select * from users
where id in (110,115,120,125,130,1000,12200,1212545)
and first_name in ('Luiz', 'Keelie');