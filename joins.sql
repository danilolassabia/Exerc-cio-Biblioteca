select filmes.titulo, locacao_filme.data_devol, locacao.data_loc from filmes 
	join locacao_filme on filmes.cod_filme = locacao_filme.fk_cod_filme
	join locacao on locacao_filme.fk_cod_loc = locacao.cod_loc
	where locacao.fk_cod_cli = 1;

select cliente.nome, dependente.parentesco from cliente 
	join dependente on cliente.cod_cli = dependente.fk_cod_cli;

select filmes.titulo from filmes
	join genero on filmes.fk_cod_gen = genero.cod_gen
	where genero.nome = 'Ação';

select cliente.nome from cliente
	join profissao on cliente.fk_cod_prof = profissao.cod_prof
	where profissao.nome = 'Professor';

select filmes.titulo from filmes
	join categoria on filmes.fk_cod_cat = categoria.cod_cat
	where filmes.quantidade > 5 and categoria.nome = 'Clássico';

select ator.nome from ator
	join filme_ator on ator.cod_ator = filme_ator.fk_cod_ator
	join filmes on filmes.cod_filme = filme_ator.fk_cod_filme
	where filmes.titulo = 'Velozes e Furiosos' and filme_ator.ator = 'S';

select endereco.logradouro,endereco.tipo_log,endereco.complemento,endereco.cidade,endereco.uf,endereco.cep,endereco.numero,endereco.bairro from endereco
	join cli_endereco on endereco.cod_end = cli_endereco.fk_cod_end
	where cli_endereco.fk_cod_cli = 1;

select filmes.titulo, categoria.nome as categoria,genero.nome as genero from filmes
	join categoria on filmes.fk_cod_cat = categoria.cod_cat
	join genero on filmes.fk_cod_gen = genero.cod_gen;

select cliente.nome, data_loc from cliente
	join locacao on cliente.cod_cli = locacao.fk_cod_cli
	join locacao_filme on locacao.cod_loc = locacao_filme.fk_cod_loc
	where locacao_filme.fk_cod_filme = 1;

select cliente.nome from cliente
	join locacao on cliente.cod_cli = locacao.fk_cod_cli
	where locacao.multa > money(1);

select * from locacao
	where data_loc > '12-09-2023' and data_loc < '15-01-2024';

select cliente.nome,count(locacao.fk_cod_cli) as quantidade_de_locacoes from cliente
	join locacao on cliente.cod_cli = locacao.fk_cod_cli 
	group by cliente.nome;

select cliente.nome, filmes.titulo, locacao.data_loc from cliente
	join locacao on cliente.cod_cli = locacao.fk_cod_cli
	join locacao_filme on locacao.cod_loc = locacao_filme.fk_cod_loc
	join filmes on locacao_filme.fk_cod_filme = filmes.cod_filme
	order by locacao.data_loc;

select cliente.nome, endereco.cidade, categoria.nome from cliente
	join cli_endereco on cliente.cod_cli = cli_endereco.fk_cod_cli
	join endereco on cli_endereco.fk_cod_end = endereco.cod_end
	join locacao on cliente.cod_cli = locacao.fk_cod_cli
	join locacao_filme on locacao.cod_loc = locacao_filme.fk_cod_loc
	join filmes on locacao_filme.fk_cod_filme = filmes.cod_filme
	join categoria on filmes.fk_cod_cat = categoria.cod_cat
	where endereco.cidade = 'Belo Horizonte' and categoria.nome = 'Nacional';

select ator.nome, count(case when filme_ator.ator ='S' then 1 end) as quantidade_filmes from ator
	join filme_ator on ator.cod_ator = filme_ator.fk_cod_ator
	group by ator.nome having count(case when filme_ator.ator ='S' then 1 end) > 5;

select categoria.nome,genero.nome,count(locacao_filme.fk_cod_filme) from categoria
	join filmes on categoria.cod_cat = filmes.fk_cod_cat
	join genero on filmes.fk_cod_gen = genero.cod_gen
	join locacao_filme on filmes.cod_filme = locacao_filme.fk_cod_filme
	group by categoria.nome,genero.nome;
