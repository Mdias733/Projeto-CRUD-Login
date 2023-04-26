CREATE DATABASE catraca;
USE catraca;

CREATE TABLE tb_administradores (
  id_adm INT PRIMARY KEY AUTO_INCREMENT,
  nome_adm VARCHAR(255),
  usuario_adm VARCHAR(255) UNIQUE,
  email_adm VARCHAR(255),
  senha_adm VARCHAR(80),
  dataCad_adm TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_administradores (nome_adm, usuario_adm, email_adm, senha_adm) 
VALUES ('matheus', 'a', 'matheus@aa.com', '123');

CREATE TABLE tb_cadUsuario (
  id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome_Usuario VARCHAR(255) UNIQUE,
  dtNasc_Usuario VARCHAR(15),
  email_Usuario VARCHAR(255),
  senha_Usuario VARCHAR(80),
  dataCad_Usuario TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_cadUsuario (nome_Usuario, email_Usuario, senha_Usuario) 
VALUES ('1', 'matheus@aa.com', '123');

CREATE TABLE tb_funcionarios (
  id_funcionario INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_funcionario VARCHAR(80) NOT NULL unique,
  email_funcionario VARCHAR(100) NOT NULL,
  telefone_funcionario VARCHAR(20) NOT NULL,
  data_funcionario TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_funcionarios (nome_funcionario, email_funcionario, telefone_funcionario) 
VALUES ('Matheus', 'matheus@aa.com', '1111123');

CREATE TABLE tb_entradas (
  id_entrada INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_funcionario INT UNSIGNED NOT NULL,
  dataEHoraEntrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  CONSTRAINT FK_entradas_funcionario FOREIGN KEY (id_entrada) REFERENCES tb_funcionarios(id_funcionario)
);


insert into tb_entradas values(
);

CREATE TABLE tb_saidas (
  id_saida INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_funcionario INT UNSIGNED NOT NULL,
  dataEHorasaida TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  CONSTRAINT FK_saidas_funcionario FOREIGN KEY (id_saida) REFERENCES tb_funcionarios(id_funcionario)
);

insert into tb_entradas values();


SELECT a.nome_funcionario, b.dataEHoraEntrada, c.dataEHorasaida 
FROM tb_funcionarios a 
INNER JOIN tb_entradas b ON a.id_funcionario = b.id_funcionario 
INNER JOIN tb_saidas c ON a.id_funcionario = c.id_funcionario;

DROP TABLE tb_funcionarios;
