--Gustavo de Paula Gorges, João Otávio Bento, Giovanni wendel rezende de Oliveira, Carlos Eduardo de Oliveira Fernandes
select nome_funcionario, cpf_funcionario, tipo_funcionario, salario_funcionario from funcionario, tipo_funcionario
where tipo_funcionario.cod_tipo_funcionario = funcionario.cod_tipo_funcionario;


select titu_obra, ano_obra, nome_autor, nacionalidade_autor, desc_estilo_obra from obra, autor 
where obra.cod_autor = autor.cod_autor;

select nome_mat_prima, qtd_mat_mnt, desc_mnt, custo_mnt, titu_obra, ano_obra, func_id_funcionario from manu_mat, materia_prima, manutencao, funcionario, obra , autor
where 
funcionario.id_funcionario = manutencao.func_id_funcionario and
manu_mat.Campo_1 = manutencao.mnt_obra and
manu_mat.Campo_2 = materia_prima.cod_mat_prima and
manutencao.cod_obra = obra.cod_obra and
autor.cod_autor = obra.cod_autor and
nome_autor = "Maria Rita de Oliveira";


select custo_mnt, data_ini_mnt, data_termi_mnt, desc_mnt from manutencao ;


select nome_mat_prima, qtd_mat_mnt, desc_mnt, custo_mnt, titu_obra, ano_obra, func_id_funcionario from manu_mat, materia_prima, manutencao, funcionario, obra , autor
where funcionario.id_funcionario = manutencao.func_id_funcionario and
manu_mat.Campo_1 = manutencao.mnt_obra and
manu_mat.Campo_2 = materia_prima.cod_mat_prima and
manutencao.cod_obra = obra.cod_obra and
autor.cod_autor = obra.cod_autor and
autor.nome_autor = "Akira Hashimoto";


select titu_obra, sum(custo_mnt) from manutencao, obra where
obra.cod_obra = manutencao.cod_obra group by titu_obra;


select hora_entrada, hora_saida, data_atividade from salao, atividade, obra, salao_obra where
salao_obra.salao_cod_salao = salao.cod_salao and
obra.cod_obra = atividade.ob_cod_obra and
obra.cod_obra = salao_obra.obra_cod_obra and 
num_salao = 55;


select nacionalidade_autor, ano_obra, titu_obra, desc_estilo_obra from autor, obra, tipo_obra
where autor.cod_autor = obra.cod_autor and
obra.cod_tipo_obra = tipo_obra.cod_tipo_obra and
obra.cod_tipo_obra = 01;


select count(cod_obra) from obra, tipo_obra where
tipo_obra.cod_tipo_obra = obra.cod_tipo_obra group by
tipo_obra.desc_tipo_obra;


select sum(cod_obra)as resultado, andar_museu from obra, salao, salao_obra
where obra.cod_obra = salao_obra.obra_cod_obra and
salao_obra.salao_cod_salao = salao.cod_salao group by 
salao.andar_museu;

select num_salao, andar_museu, salao, desc_estilo_obra, titu_obra, ano_obra, nome_autor from salao, obra, salao_obra, autor where
autor.cod_autor = obra.cod_autor and
salao_obra.obra_cod_obra = obra.cod_obra and
salao_obra.salao_cod_salao = salao.cod_salao and
salao_obra.posicao_salao = "Parte superior";
