update estados set nome='Maranhão' where sigla='MA';

select nome from estados WHERE sigla='MA';
select nome from estados WHERE sigla="MA"; -- também funciona com aspas duplas
select est.nome from estados est where sigla="MA";
select est.`nome` from estados est where sigla="MA"; -- diversas maneiras de efetuar o mesmo comando

update estados
set nome='Paraná', populacao=11.32
where sigla='PR';

select est.nome, sigla, populacao
from estados est where sigla="PR";