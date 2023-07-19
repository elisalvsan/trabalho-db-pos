/* INSERINDO NA TABELA ESTADO */
insert into estado(Nome, UF) values ("Bahia", "BA");
insert into estado(Nome, UF) values ("Paraíba", "PB");
insert into estado(Nome, UF) values ("Minas Gerais", "MG");

/* INSERINDO NA TABELA Municipio */
insert into municipio(Nome, CodIBGE, Estado_ID) values ("João Pessoa", 2507507, 2);
insert into municipio(Nome, CodIBGE, Estado_ID) values ("Feira de Santana", 2910800, 1);
insert into municipio(Nome, CodIBGE, Estado_ID) values ("Uberlândia", 3170206, 3);


/* INSERINDO NA TABELA Cliente */
insert into cliente(Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
values("Claudia Dantas Melo",'58437915846','83987456124',"Rua Pastor Misael Jacomé Cavalcanti",
"157",7507,'58075010',1);
insert into cliente(Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
values("Josias Antonio Holanda da Cruz",'87124956830','31996888845',"Rua Belkina Carvalho Cunha",
"58",70206,'38411342',3);
insert into cliente(Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
values("Fhelipa de Luna",'15397546854','71986457325',"Rua São Vicente","10",10800,'44077320',2);


/* INSERINDO NA TABELA ContaReceber */
insert into contareceber(FaturaVendaID, DataConta, DataVencimento, Valor, Situacao, Cliente_ID) 
values (1,'2023-05-10','2023-05-15',1500,'1',3);
insert into contareceber(FaturaVendaID, DataConta, DataVencimento, Valor, Situacao, Cliente_ID) 
values (2,'2023-06-05','2023-06-15',2000,'3',1);
insert into contareceber(FaturaVendaID, DataConta, DataVencimento, Valor, Situacao, Cliente_ID) 
values (3,'2023-07-25','2023-07-05',100,'2',2);