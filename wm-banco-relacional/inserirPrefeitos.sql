select * from `cidades`;

SELECT * FROM `prefeitos`;

insert into prefeitos
    (nome,cidade_id)
values
    ('Rodrigo Neves',2),
    ('Raquel Lyra',3),
    ('Zenaldo Coutinho',null);

insert into prefeitos
    (nome,cidade_id)
values
    ('Rafael Greca',null);

insert into prefeitos(nome,cidade_id) values ('Rodrigo Pinheiro',3); -- Comando não será efetivado pois a chave estrangeira ficará duplicada e por configuracao ela é unica, no caso do null isso não se aplica, podendo ter o valor NULL duplicado sem problema.