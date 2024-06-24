create table endereco
(
	cod_end serial primary key,
	logradouro varchar(40),
	tipo_log varchar(40),
	complemento varchar(40),
	cidade varchar(40),
	uf char(1),
	cep char(8),
	numero varchar(10),
	bairro varchar(60)
);
 
create table profissao
(
	cod_prof serial primary key,
	nome varchar(60)
);
 
create table categoria
(
	cod_cat serial primary key,
	nome varchar(60),
	valor money
);
 
create table genero
(
	cod_gen serial primary key,
	nome varchar(60)
);
 
create table ator
(
	cod_ator serial primary key,
	nome varchar(60)
);
 
create table filmes
(
	cod_filme serial primary key,
	titulo_original varchar(100),
	titulo varchar(100),
	quantidade int,
	fk_cod_cat int not null,
	fk_cod_gen int not null,
	foreign key (fk_cod_cat) references categoria(cod_cat),
	foreign key (fk_cod_gen) references genero(cod_gen)
);
 
create table filme_ator
(
	fk_cod_ator int not null,
	fk_cod_filme int not null,
	ator char(1),
	diretor char(1),
	foreign key (fk_cod_ator) references ator(cod_ator),
	foreign key (fk_cod_filme) references filmes(cod_filme),
	primary key(fk_cod_ator,fk_cod_filme)
);
 
create table cliente
(
	cod_cli serial primary key,
	cpf char(11),
	nome varchar(60),
	telefone varchar(10),
	fk_cod_prof int not null,
	foreign key (fk_cod_prof) references profissao(cod_prof)
);
 
create table cli_endereco
(
	fk_cod_end int not null,
	fk_cod_cli int not null,
	foreign key (fk_cod_end) references endereco(cod_end),
	foreign key (fk_cod_cli) references cliente(cod_cli)
);
 
create table dependente
(
	fk_cod_cli int not null,
	cod_dep serial,
	parentesco varchar(20),
	foreign key (fk_cod_cli) references cliente(cod_cli),
	primary key(fk_cod_cli, cod_dep)
);
 
create table locacao
(
	cod_loc serial primary key,
	data_loc date,
	desconto money,
	multa money,
	sub_total money,
	fk_cod_cli int,
	foreign key (fk_cod_cli) references cliente(cod_cli)
);
 
create table locacao_filme
(
	fk_cod_loc int not null,
	fk_cod_filme int not null,
	valor money,
	num_dias int,
	data_devol date,
	foreign key (fk_cod_loc) references locacao(cod_loc),
	foreign key (fk_cod_filme) references filmes(cod_filme),
	primary key(fk_cod_loc,fk_cod_filme)
);
