CREATE DATABASE estacionamento;
USE estacionamento;

CREATE TABLE tb_fabrica (
  id_fabrica INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_fabrica)
);

CREATE TABLE tb_estacionamento (
  id_estacionamento INT NOT NULL AUTO_INCREMENT,
  id_fabrica INT,
  PRIMARY KEY (id_estacionamento),
  FOREIGN KEY (id_fabrica) REFERENCES tb_fabrica(id_fabrica)
);

CREATE TABLE tb_vagas (
  id_vaga INT NOT NULL AUTO_INCREMENT,
  primary key(id_vaga),
  numero_vaga INT,
  disponivel_vaga VARCHAR(20),
  indisponivel_vaga VARCHAR(20),
  id_estacionamento INT,
  
  FOREIGN KEY (id_estacionamento) REFERENCES tb_estacionamento(id_estacionamento)
);

CREATE TABLE tb_carro (
  id_carro INT NOT NULL AUTO_INCREMENT,
  primary key(id_carro),
  placa_carro VARCHAR(13) unique,
  marca_modelo VARCHAR(30),
  valor_carro varchar (30),
  setor_carro varchar(30)
);
drop table tb_carro;
INSERT INTO tb_carro (placa_carro, marca_modelo, valor_carro, setor_carro) VALUES ('ABC1234', 'Ford Fusion', 'R$ 50.000', "4");
INSERT INTO tb_carro (placa_carro, marca_modelo, valor_carro,setor_carro) VALUES ('JKL2345', 'Toyota Corolla', 'R$ 60.000',"2");
INSERT INTO tb_carro (placa_carro, marca_modelo, valor_carro,setor_carro) VALUES ('ODD1623', 'Ferrari FF', 'R$ 3.169.275',"2");
INSERT INTO tb_carro (placa_carro, marca_modelo, valor_carro,setor_carro) VALUES ('UYD1623', 'Toyota Hilux', 'R$ 169.275',"3");
INSERT INTO tb_carro (placa_carro, marca_modelo, valor_carro,setor_carro) VALUES ('JSU1623', 'Volkswagen Jetta', 'R$ 69.275',"3");





