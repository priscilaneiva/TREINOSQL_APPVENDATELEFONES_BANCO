CREATE TABLE IF NOT EXISTS TabelaEstoqueTelefones (
IDTabelaEstoqueTelefones INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
ModeloTelefone TEXT NOT NULL ,
CorTelefone TEXT NOT NULL,
ArmazenamentoTelefone TEXT NOT NULL,
IMEITelefone INTEGER NOT NULL,
CodigoTelefone INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TabelaFaturamento (  
IDTabelaFaturamento INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
CustoTelefone REAL NOT NULL,
PrecoVendaTelefone REAL NOT NULL,
DescontoVendaTelefone REAL NOT NULL,
CodigoVendaTelefone INTEGER NOT NULL,
CupomDescontoVendaTelefone TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS TabelaVendedores(
IDTabelaVendedores INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
NomeVendedor TEXT NOT NULL,
CodigoVendedor INTEGER NOT NULL,
TelefoneVendedor TEXT NOT NULL,
CupomDescontoVendedor TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS TabelaFornecedores(
IDTabelaFornecedores INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
NomeFornecedor TEXT NOT NULL,
CodigoFornecedor INTEGER NOT NULL ,
TelefoneFornecedor TEXT NOT NULL ,
EnderecoFornecedor TEXT NOT NULL ,
CNPJFornecedor TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS TabelaClientes(
IDTabelaClientes INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
NomeCliente TEXT NOT NULL,
CPFCliente TEXT NOT NULL,
TelefoneCliente TEXT NOT NULL,
EnderecoCliente TEXT NOT NULL,
DataNascimentoCliente TEXT NOT NULL
);
INSERT INTO TabelaEstoqueTelefones (ModeloTelefone, CorTelefone, ArmazenamentoTelefone, IMEITelefone, CodigoTelefone) VALUES ('iPhone 17 Pro Max', 'Laranja', '256 GB','35231456985745', '0261'),('iPhone 17 Pro Max', 'Azul', '256 GB','35231456985458', '0262'), ('iPhone 17 Pro Max', 'Branco', '512 GB','35231456987898', '0263'),('iPhone 17 Pro Max', 'Branco', '1 TB','34851456985458', '0264');

INSERT INTO TabelaFaturamento (CustoTelefone, PrecoVendaTelefone, DescontoVendaTelefone, CupomDescontoVendaTelefone, CodigoVendaTelefone) VALUES ('5,000.00', '9,000.00',' 300.00','PASCOA2026', '0261'), ('4,385.00', '9,050.00',' 250.00','MAE2026', '0262'), ('5,100.00', '9,150.00',' 200.00','NAMORADOS2026', '0263'), ('4,385.00', '9,050.00',' 250.00','MAE2026', '0264');

INSERT INTO TabelaVendedores (NomeVendedor, CodigoVendedor, TelefoneVendedor, CupomDescontoVendedor) VALUES ('Priscila', '13', '31996933843','PRI013'), ('Larissa', '10', '31996933584','LARI10'), ('Victor', '20', '31998533843','VICTOR20'), ('Fábio', '30', '31996985243','FABIO30');

INSERT INTO TabelaFornecedores (NomeFornecedor, CodigoFornecedor, TelefoneFornecedor, EnderecoFornecedor, CNPJFornecedor) VALUES ( 'Caio Jorge','11','11854723659','Rua Alegria,1,Felicidade', '231458796584712'),( 'Karina Leao','12','11785723659','Rua Ansiedade,2,Trsiteza', '2317846584712'),( 'Amanda Nunes','13','11847723659','Rua Cinquentenario,25,Centro', '231748596584712'), ( 'Clara Maria','14','11854727419','Rua da Felicidade,50,Rios', '231742396584712');

INSERT INTO TabelaClientes (NomeCliente, CPFCliente, TelefoneCliente,EnderecoCliente,DataNascimentoCliente) VALUES ( 'Jorge Maia','121852741369','11854723659','Rua Alegria,1,Felicidade', '12/01/1990'),( 'Jorgina Carol','12158747895','11785723659','Rua Ansiedade,2,Trsiteza', '14/08/1987'),( 'Amado Batista','13174589625','11847723659','Rua Cinquentenario,25,Centro', '14/03/1988'), ( 'Elizabeth Felix','14478958956','11854727419','Rua da Felicidade,50,Rios', '26/08/1991');


UPDATE TabelaEstoqueTelefones
SET 
ModeloTelefone = 'iPhone 12 Pro Max',
ArmazenamentoTelefone = '1 TB'

WHERE IDTabelaEstoqueTelefones IN(2,3);

UPDATE TabelaFaturamento
SET
CustoTelefone = '3,900.00',
PrecoVendaTelefone = '6,800.00',
DescontoVendaTelefone = '50.00',
CodigoVendaTelefone = '25',
CupomDescontoVendaTelefone = '458'
WHERE IDTabelaFaturamento IN(2,3,4,5,6);


UPDATE TabelaVendedores
SET
NomeVendedor = 'Paula Cristina',
CodigoVendedor = '45',
TelefoneVendedor = '27859632147',
CupomDescontoVendedor = 'FELIX23'
WHERE IDTabelaVendedores IN (4,5,6,7);

UPDATE TabelaFornecedores 
SET 
NomeFornecedor ='Sergio Abreu',
CodigoFornecedor = '852',
TelefoneFornecedor ='11978452365',
EnderecoFornecedor ='Rua Araao,12, Centro',
CNPJFornecedor = '125897458963214'
WHERE IDTabelaFornecedores IN(1,2,3,4,5);

UPDATE TabelaClientes
SET
NomeCliente ='Priscila Félix',
CPFCliente ='12345678958',
TelefoneCliente ='31996933843',
EnderecoCliente ='Rua 2, 50,Margarida',
DataNascimentoCliente ='13/03/1995'
WHERE IDTabelaClientes IN (1,2,3,4,5);
