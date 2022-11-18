select e.nome,c.nome as Cidade
from empresas e, empresas_unidades eu,cidades c
where e.id=eu.empresa_id
and c.id=eu.empresa_id
and sede;

-- consulta feita no workbench pelos problemas mencionados anteriormente do VSCode