---1 CRUC que retorne: nome_funcionario, cpf_funcionario, tipo_funcionario, salario_funcionario, de todos os funcionários cadastrados na entidade funcionario.
select nome_funcionario, cpf_funcionario, tipo_funcionario, salario_funcionario from funcionario, tipo_funcionario
where tipo_funcionario.cod_tipo_funcionario = funcionario.cod_tipo_funcionario;

---2 CRUC que retorne: título da obra, ano da obra, nome autor, nacionalidade do autor, descrição estilo da obra, para as obras do tipo pintura.
select titu_obra, ano_obra, nome_autor, nacionalidade_autor, desc_estilo_obra from obra, autor ;
where obra.cod_autor = autor.cod_autor

---3 CRUC que retorne: custo manutenção, data início manutenção, data término manutenção, descrição da manutenção, de todas as manutenções cadastradas.
select custo_mnt, data_ini_mnt, data_termi_mnt, desc_mnt from manutencao ;

---4 CRUC que retorne: nome matéria prima, quantidade da matéria prima na manutenção, descrição da manutenção, custo da manutenção, título obra, ano obra, nome funcionário responsável pela manutenção, filtrando pelo nome do autor da obra.
select nome_mat_prima, qtd_mat_mnt, desc_mnt, custo_mnt, titu_obra, ano_obra, func_id_funcionario from manu_mat, materia_prima, manutencao, funcionario, obra , autor
where funcionario.id_funcionario = manutencao.func_id_funcionario and
manu_mat.Campo_1 = manutencao.mnt_obra and
manu_mat.Campo_2 = materia_prima.cod_mat_prima and
manutencao.cod_obra = obra.cod_obra and
autor.cod_autor = obra.cod_autor and
autor.nome_autor = "Jin Yuan";

---5 CRUC que retorne: título obra e o cálculo do custo total da manutenção agrupando por título da obra. (Considerar a soma de todas as manutenções de cada obra)
select titu_obra, sum(custo_mnt) from manutencao, obra where
obra.cod_obra = manutencao.cod_obra group by titu_obra;

---6 CRUC que retorne: hora entrada, hora saída, data atividade, filtrando pelo número do salão.
select hora_entrada, hora_saida, data_atividade from salao, atividade, obra, salao_obra where
salao_obra.salao_cod_salao = salao.cod_salao and
obra.cod_obra = atividade.ob_cod_obra and
obra.cod_obra = salao_obra.ob_cod_obra and 
num_salao = 055;

---7 CRUC que retorne: nacionalidade do autor, ano obra, título obra, descrição estilo obra, filtrando pelo tipo da obra.
select nacionalidade_autor, ano_obra, titu_obra, desc_estilo_obra from autor, obra, tipo_obra
where autor.cod_autor = obra.cod_autor and
obra.cod_tipo_obra = tipo_obra.cod_tipo_obra and
obra.cod_tipo_obra = 01;

---8 CRUC que retorne: quantidade de obras agrupando pela descrição do tipo de cada obra.
select count(cod_obra) from obra, tipo_obra where
tipo_obra.cod_tipo_obra = obra.cod_tipo_obra group by
tipo_obra.desc_tipo_obra;

--9 CRUC que retorne: quantidade de obras expostas, agrupando pelo andar do museu.
select sum(cod_obra) from obra, salao, salao_obra
where obra.cod_obra = salao_obra.obra_cod_obra and
salao_obra.salao_cod_salao = salao.cod_salao group by 
salao.andar_museu;

--10 CRUC que retorne: número salão, andar museu, salão, descrição estilo obra, título obra, ano obra, nome autor, filtrando pela posição do salão.
select num_salao, andar_museu, salao, desc_estilo_obra, titu_obra, ano_obra, nome_autor from salao, obra, salao_obra, autor where
autor.cod_autor = obra.cod_autor and
salao_obra.obra_cod_obra = obra.cod_obra and
salao_obra.salao_cod_salao = salao.cod_salao and
salao_obra.posicao_salao = "10"
