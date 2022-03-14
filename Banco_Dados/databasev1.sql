CREATE DATABASE DataFlow;
USE DataFlow;

CREATE TABLE cadastroEmpresa(
	idcadastro int primary key auto_increment,
    nomeEmpresa VARCHAR(50),
    emailEmpresa VARCHAR(50),
    senhaEmpresa VARCHAR(20),
    cnpj CHAR(14)
);

CREATE TABLE sensoresTaft(
	idSensores INT PRIMARY KEY auto_increment,
    data_hora datetime default current_timestamp,
    sensor_empresa varchar(7) constraint chksensor check 
    (sensor_empresa = 'entrada' or sensor_empresa = 'catraca' or sensor_empresa = 'saida'),
    identificacao_onibus varchar(10)
);

select * from cadastroEmpresa;
INSERT INTO cadastroEmpresa values
 (null,'EMTU','emtutrans@gmail.com.br','emtu212','58.518.0690001'),
 (null,'TOP','toptransporte@gmail.com.br','top01025','10.943.5550001'),
 (null,'VIPE','vipetransporte@gmail.com.br','vipetra','20.274.7680001'),
 (null,'Metra','metratransporte@gmail.com.br','metra','01.764.4170001'),
 (null,'SPTrans','ssptrans@dne.com.br','sptrans2004','60.498.4170001')
 ;
 
 SELECT* FROM cadastroEmpresa;
 
 INSERT INTO sensoresTaft VALUES
 
 -- Entradas 5, saidas 5 e Catracas 5
 (null, '2022-03-09 14:20:00', 'entrada', '172X'),
 (null, '2022-03-09 09:05:50','entrada', '172X'),
 (null, '2022-03-13 07:00:35','catraca','172X'),
 (null, '2022-03-13 07:26:35','catraca','172X'),
 (null, '2022-03-09 15:00:59', 'saida', '172X'),
 (null, '2022-03-09 10:00:30', 'saida', '172X'),
 (null, '2022-03-10 08:00:30', 'entrada', '172X'),
 (null, '2022-03-13 07:50:35','catraca','172X'),
 (null, '2022-03-10 08:30:45', 'saida', '172X'),
 (null, '2022-03-10 23:11:20', 'entrada', '172X'),
 (null, '2022-03-13 07:00:35','catraca','172X'),
 (null, '2022-03-10 00:00:20', 'saida', '172X'),
 (null, '2022-03-10 00:32:50', 'saida', '172X'),
 (null, '2022-03-11 07:00:50', 'entrada','172X'),
 (null, '2022-03-13 08:15:35','catraca','172X'),


 
 -- Entradas 5, saidas 5 e Catracas 5
 (null, '2022-03-13 07:00:00','entrada','172X'),
 (null, '2022-03-13 07:26:00','entrada','172X'),
 (null, '2022-03-13 07:50:00','entrada','172X'),
 (null, '2022-03-13 08:00:00','entrada','172X'),
 (null, '2022-03-13 08:15:00','entrada','172X'),
 (null, '2022-03-11 14:22:00', 'catraca', '172X'),
 (null, '2022-03-11 09:08:00', 'catraca', '172X'),
 (null, '2022-03-11 08:03:00', 'catraca', '172X'),
 (null, '2022-03-11 23:15:00', 'catraca', '172X'),
 (null, '2022-03-11 07:04:00', 'catraca', '172X'),
 (null, '2022-03-13 07:24:00','saida','172X'),
 (null, '2022-03-13 07:50:00','saida','172X'),
 (null, '2022-03-13 07:50:00','saida','172X'),
 (null, '2022-03-13 08:00:00','saida','172X'),
 (null, '2022-03-13 08:15:00','saida','172X'),

 -- Entradas 5, saidas 5 e Catracas 5
 (null, '2022-03-11 07:15:00', 'entrada', '172X'), 
 (null, '2022-03-11 07:30:00', 'saida', '172X'),
 (null, '2022-03-11 08:10:00', 'entrada', '172X'), 
 (null, '2022-03-11 08:15:00', 'entrada', '172X'), 
 (null, '2022-03-11 08:25:00', 'saida', '172X'),
 (null, '2022-03-11 15:22:30', 'catraca', '172X'),
 (null, '2022-03-11 14:05:50', 'catraca', '172X'),
 (null, '2022-03-11 14:52:40', 'catraca', '172X'),
 (null, '2022-03-11 11:15:20', 'catraca', '172X'),
 (null, '2022-03-11 21:27:20', 'catraca', '172X'),
 (null, '2022-03-11 08:45:00', 'saida', '172X'),
 (null, '2022-03-12 06:35:00', 'entrada', '172X'), 
 (null, '2022-03-12 06:55:00', 'saida', '172X'),
 (null, '2022-03-12 07:10:00', 'entrada', '172X'), 
 (null, '2022-03-12 08:00:40', 'saida', '172X')

 
  ;
  
  select * from sensoresTaft;