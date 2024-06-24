insert into endereco(logradouro,tipo_log,complemento,cidade,uf,cep,numero,bairro) values
	('Rua São Paulo','Casa',null,'São Paulo','SP','1234567','123','Brás'),
	('Rua Ceará','Apartamento','Apto 32','Fortaleza','CE','87654321','321','Riozinho'),
	('Rua Rio de Janeiro','Apartamento','Apto 63','Rio de Janeiro','RJ','91011121','67','Botafogo'),
	('Rua Pernambuco','Casa',null,'Recife','PE','13579110','333','Coralândia'),
	('Rua Minas Gerais','Apartamento','124','Belo Horizonte','MG','10121416','600','Ourinhos');

insert into profissao(nome) values 
	('Professor'),
	('Cozinheiro'),
	('Advogado'),
	('Policial'),
	('Jogador de Futebol');

insert into categoria(nome,valor) values
	('Premiado',20.50),
	('Clássico',15),
	('Novo',20),
	('Nacional',10.99),
	('Normal',12.50);

insert into genero(nome) values
	('Ação'),
	('Terror'),
	('Comédia'),
	('Romance'),
	('Ficção Científica'),
	('Guerra'),
	('Musical'),
	('Suspense'),
	('Fantasia'),
	('Drama');

insert into ator(nome) values  
	('Emma Watson'),
	('Edward Garfield'),
	('Vin Diesel'),
	('The Rock'),
	('Leonardo DiCaprio'),
	('Adam Sandler'),
	('Joaquin Phoenix'),
	('Alexandre Rodrigues'),
	('Chris Evans'),
	('Christian Bale');

insert into filmes(titulo_original,titulo,quantidade,fk_cod_cat,fk_cod_gen) values
	('Harry Potter and the Philosophers Stone','Harry Potter e a Pedra Filosofal',5,1,9),
	('The Perks of Being a Wallflower','As Vantagens de ser Invisível',3,5,10),
	('The Amazing Spider-Man','O Espetacular Homem-Aranha',4,5,1),
	('Hacksaw Ridge','Até o Último Homem',7,5,6),
	('Fast and Furious','Velozes e Furiosos',10,2,1),
	('The Pacifier','Operação Babá',4,5,3),
	('The Revenant','O Regresso',5,1,1),
	('Shutter Island','Ilha do Medo',6,2,8),
	('50 First Dates','Como Se Fosse a Primeira Vez',8,5,4),
	('Spaceman','O Astronauta',2,3,5),
	('Joker','Coringa',12,1,10),
	('Her','Ela',3,5,5),
	('Cidade de Deus','Cidade de Deus',4,4,10),
	('Captain America','Capitão Améria',10,2,9),
	('American Psycho','Um Psicopata Americano',3,5,8);
	
insert into filme_ator(fk_cod_ator,fk_cod_filme,ator,diretor) values
	(1,1,'S','N'),
	(1,2,'S','N'),
	(2,3,'S','N'),
	(2,4,'S','N'),
	(3,5,'S','N'),
	(3,6,'S','N'),
	(5,7,'S','N'),
	(5,8,'S','N'),
	(6,9,'S','N'),
	(6,10,'S','N'),
	(7,11,'S','N'),
	(7,12,'S','N'),
	(8,13,'S','N'),
	(9,14,'S','N'),
	(10,15,'S','N');

insert into cliente(cpf,nome,telefone,fk_cod_prof) values
	('12345678910','Naldo','21488998',1),
	('10987654321','Alice','26984138',2),
	('44546524832','Lucas','48312313',3),
	('86423238435','Carlo','87861234',4),
	('87613153147','Sofia','24793156',5),
	('55987531338','Clara','26762158',1),
	('59713658612','Paulo','26576467',2),
	('78643186135','Julia','32248954',3),
	('69745613186','Mauro','45648764',4),
	('43878613128','Pedro','28643186',5);

insert into cli_endereco(fk_cod_end,fk_cod_cli) values
	(1,1),
	(1,2),
	(2,3),
	(3,4),
	(3,5),
	(4,6),
	(4,7),
	(5,8),
	(5,9),
	(5,10);

insert into dependente(fk_cod_cli,parentesco) values 
	(1,'Filho'),
	(3,'Esposa'),
	(4,'Namorada'),
	(5,'Filho');

insert into locacao(data_loc,desconto,multa,sub_total,fk_cod_cli) values 
	('18-06-2024',0,2,17,1), 
	('11-03-2024',2,0,10.5,1),
	('01-02-2024',0,0,20.5,2),
	('23-01-2024',0,0,15,2), 
	('15-01-2024',5,0,10,3), 
	('15-01-2024',5,0,10,3), 
	('04-01-2024',0,0,12.5,4), 
	('28-12-2023',0,0,10.99,4), 
	('17-12-2023',10,0,10.5,5), 
	('16-12-2023',0,0,20.5,5),               
	('30-11-2023',0,0,20,6), 
	('20-11-2023',0,0,20.5,6), 
	('18-10-2023',0,0,15,7), 
	('07-09-2023',0,0,20.5,7), 
	('18-08-2023',0,0,12.5,8), 
	('08-07-2023',0,0,12.5,8), 
	('05-06-2023',0,0,12.5,9), 
	('25-05-2023',0,0,10.99,9), 
	('18-04-2023',0,0,12.5,10), 
	('11-03-2023',0,0,12.5,10);

insert into locacao_filme(fk_cod_loc,fk_cod_filme,valor,num_dias,data_devol) values
	(1,5,17,7,'28-06-2024'),
	(2,15,10.5,7,'15-03-2024'),
	(3,1,20.5,7,'08-02-2024'),
	(4,8,15,7,'30-01-2024'),
	(5,14,10,7,'18-01-2024'),
	(6,5,10,7,'18-01-2024'),
	(7,2,12.5,7,'11-01-2024'),
	(8,13,10.99,7,'03-01-2024'),
	(9,7,10.5,7,'23-12-2023'),
	(10,11,20.5,7,'17-12-2023'),
	(11,10,20,7,'07-12-2023'),
	(12,1,20.5,7,'27-11-2023'),
	(13,14,15,7,'25-11-2023'),
	(14,7,20.5,7,'14-09-2023'),
	(15,3,12.5,7,'25-08-2023'),
	(16,4,12.5,7,'15-07-2023'),
	(17,6,12.5,7,'12-06-2023'),
	(18,13,10.99,7,'01-06-2023'),
	(19,9,12.5,7,'25-04-2023'),
	(20,12,12.5,7,'18-03-2023');
