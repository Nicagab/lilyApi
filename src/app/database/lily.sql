CREATE DATABASE bdlily;
USE bdlily;

CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date NOT NULL,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB;

CREATE TABLE `profissional` (
  `idProfissional` int NOT NULL AUTO_INCREMENT,
  `resumo` varchar(256) DEFAULT NULL,
  `crm` varchar(9) DEFAULT NULL,
  `coren` varchar(11) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idProfissional`)
) ENGINE=InnoDB;

CREATE TABLE `parceiro` (
  `idParceiro` int NOT NULL AUTO_INCREMENT,
  `nomeFantasia` varchar(45) DEFAULT NULL,
  `cnpj` varchar(14) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idParceiro`)
) ENGINE=InnoDB;

CREATE TABLE `conteudo` (
  `idConteudo` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(256) NOT NULL,
  `palavraChave` varchar (45) NOT NULL,
  `resumo` varchar(200) NOT NULL,
  `texto` TEXT NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idConteudo`)
) ENGINE=InnoDB;

CREATE TABLE `topico` (
  `idTopico` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(256) NOT NULL,
  `texto` TEXT NOT NULL,
  `idConteudo` int DEFAULT NULL,
  PRIMARY KEY (`idTopico`)
) ENGINE=InnoDB;

CREATE TABLE `publicacao` (
`idPublicacao` int NOT NULL AUTO_INCREMENT,
`titulo` varchar(30) DEFAULT NULL, 
`texto` varchar(256) NOT NULL,
`dataPostagem` datetime NOT NULL,
`idUsuario` int DEFAULT NULL,
`idParceiro` int DEFAULT NULL,
PRIMARY KEY (`idPublicacao`)
) ENGINE=InnoDB;

CREATE TABLE `comentario` (
`idComentario` int NOT NULL AUTO_INCREMENT,
`texto` varchar(1000) NOT NULL,
`dataPostagem` datetime NOT NULL,
`idUsuario` int DEFAULT NULL,
`idParceiro` int DEFAULT NULL,
`idPublicacao` int NOT NULL,
PRIMARY KEY (`idComentario`)
) ENGINE=InnoDB;

CREATE TABLE `calendario` (
  `idCalendario` int NOT NULL AUTO_INCREMENT,
  `inicioCiclo` date DEFAULT NULL,
  `duracao` int DEFAULT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idCalendario`)
) ENGINE=InnoDB;

CREATE TABLE `dia` (
  `idDia` int NOT NULL AUTO_INCREMENT,
  `dataZ` date NOT NULL,
  `emocional` varchar(20) default null,
  `anotacao` varchar(256) default NULL,
  `idCalendario` int NOT NULL,
  PRIMARY KEY (`idDia`)
) ENGINE=InnoDB;

CREATE TABLE `evento` (
`idEvento` int NOT NULL AUTO_INCREMENT,
`nome` varchar(45) NOT NULL,
PRIMARY KEY (`idEvento`)
) ENGINE=InnoDB;

CREATE TABLE `dia_evento`(
`idDiaEvento` int NOT NULL AUTO_INCREMENT,
`idDia` int NOT NULL,
`idEvento` int NOT NULL,
`horario` time default null,
PRIMARY KEY (`idDiaEvento`)
) ENGINE=InnoDB;

CREATE TABLE `sintoma` (
`idSintoma` int NOT NULL AUTO_INCREMENT,
`nome` varchar(45) NOT NULL,
`emoji` int NOT NULL,
`tipo` varchar(30) NOT NULL,
PRIMARY KEY (`idSintoma`)
) ENGINE=InnoDB;

CREATE TABLE `dia_sintoma`(
`idDiaSintoma` int NOT NULL AUTO_INCREMENT,
`idDia` int NOT NULL,
`idSintoma` int NOT NULL,
PRIMARY KEY (`idDiaSintoma`)
) ENGINE=InnoDB;

CREATE TABLE `imagem` (
  `idImagem` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `caminho` varchar(45) NOT NULL,
  `idConteudo` int DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idImagem`)
) ENGINE=InnoDB;

CREATE TABLE `telefone` (
  `idTelefone` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `ddd` int NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `idParceiro` int DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `idProfissional` int DEFAULT NULL,
  PRIMARY KEY (`idTelefone`)
) ENGINE=InnoDB;

CREATE TABLE `reacao` (
`idReacao` int NOT NULL AUTO_INCREMENT,
`nome` varchar(45) NOT NULL,
PRIMARY KEY (`idReacao`)
) ENGINE=InnoDB;

CREATE TABLE `reacao_publicacao`(
`idReacaoPublicacao` int NOT NULL AUTO_INCREMENT,
`idReacao` int NOT NULL,
`idPublicacao` int NOT NULL,
`idUsuario` int NOT NULL,
PRIMARY KEY (`idReacaoPublicacao`)
) ENGINE=InnoDB;

CREATE TABLE `reacao_comentario`(
`idReacaoComentario` int NOT NULL AUTO_INCREMENT,
`idReacao` int NOT NULL,
`idComentario` int NOT NULL,
`idUsuario` int NOT NULL,
PRIMARY KEY (`idReacaoComentario`)
) ENGINE=InnoDB;

ALTER TABLE `profissional` ADD CONSTRAINT fk_usuario FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `calendario` ADD CONSTRAINT fk_usuario2 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `conteudo` ADD CONSTRAINT fk_usuario3 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `topico` ADD CONSTRAINT fk_topico1 FOREIGN KEY (idConteudo) REFERENCES `conteudo` (idConteudo);
ALTER TABLE `dia_sintoma` ADD CONSTRAINT fk_diaSintoma1 FOREIGN KEY (idDia) REFERENCES `dia` (idDia);
ALTER TABLE `dia_sintoma` ADD CONSTRAINT fk_diaSintoma2 FOREIGN KEY (idSintoma) REFERENCES `sintoma` (idSintoma);
ALTER TABLE `dia_evento` ADD CONSTRAINT fk_diaEvento1 FOREIGN KEY (idDia) REFERENCES `dia` (idDia);
ALTER TABLE `dia_evento` ADD CONSTRAINT fk_diaEvento2 FOREIGN KEY (idEvento) REFERENCES `evento` (idEvento);
ALTER TABLE `dia` ADD CONSTRAINT fk_calendario FOREIGN KEY (idCalendario) REFERENCES `calendario` (idCalendario);
ALTER TABLE `imagem` ADD CONSTRAINT fk_usuario4 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `imagem` ADD CONSTRAINT fk_conteudo FOREIGN KEY (idConteudo) REFERENCES `conteudo` (idConteudo);
ALTER TABLE `telefone` ADD CONSTRAINT fk_usuario5 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `telefone` ADD CONSTRAINT fk_parceiro FOREIGN KEY (idParceiro) REFERENCES `parceiro` (idParceiro);
ALTER TABLE `publicacao` ADD CONSTRAINT fk_usuario6 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `publicacao` ADD CONSTRAINT fk_parceiro2 FOREIGN KEY (idParceiro) REFERENCES `parceiro` (idParceiro);
ALTER TABLE `reacao_publicacao` ADD CONSTRAINT fk_reacao1 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `reacao_publicacao` ADD CONSTRAINT fk_reacao2 FOREIGN KEY (idReacao) REFERENCES `reacao` (idReacao);
ALTER TABLE `reacao_publicacao` ADD CONSTRAINT fk_reacao3 FOREIGN KEY (idPublicacao) REFERENCES `publicacao` (idPublicacao);
ALTER TABLE `reacao_comentario` ADD CONSTRAINT fk_reacao4 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `reacao_comentario` ADD CONSTRAINT fk_reacao5 FOREIGN KEY (idReacao) REFERENCES `reacao` (idReacao);
ALTER TABLE `reacao_comentario` ADD CONSTRAINT fk_reacao6 FOREIGN KEY (idComentario) REFERENCES `comentario` (idComentario);
ALTER TABLE `comentario` ADD CONSTRAINT fk_usuario7 FOREIGN KEY (idUsuario) REFERENCES `usuario` (idUsuario);
ALTER TABLE `comentario` ADD CONSTRAINT fk_parceiro3 FOREIGN KEY (idParceiro) REFERENCES `parceiro` (idParceiro);
ALTER TABLE `comentario` ADD CONSTRAINT fk_publicacao FOREIGN KEY (idPublicacao) REFERENCES `publicacao` (idPublicacao);

 
INSERT INTO usuario (username,email,senha,nome,dataNasc,tipo) VALUES ('gabriela', 'nicagabi2@gmail.com', 'senha1234', 'Gabriela Garcia Custodio', '2006-07-25', 'admin');
INSERT INTO usuario (username,email,senha,nome,dataNasc,tipo) VALUES ('gabriel','gabrielsilveriobeti@gmail.com', 'senha1234', 'Gabriel dos Santos Silvério Ramos', '2006-12-31', 'admin');
INSERT INTO usuario (username,email,senha,nome,dataNasc,tipo) VALUES ('ana','moura.julianascimento@gmail.com', 'senha1234', 'Ana Júlia Moura Nascimento', '2006-05-22', 'admin');
INSERT INTO usuario (username,email,senha,nome,dataNasc,tipo) VALUES ('isabelly','isatavares0606@gmail.com', 'senha1234', 'Isabelly Vitória Tavares Ramalho','2006-12-21', 'admin');
INSERT INTO usuario (username,email,senha,nome,dataNasc,tipo) VALUES ('fabiano','bianopietra@gmail.com', 'senha1234', 'Fabiano Eduardo Taglipietra', '2006-10-06', 'admin');

INSERT INTO telefone (numero, ddd, tipo, idUsuario) VALUES (969507661, 11, 'celular', 1);

INSERT INTO sintoma (nome, emoji, tipo) VALUES ('Febre', 129298, 'fisico');
INSERT INTO sintoma (nome, emoji, tipo) VALUES ('Estresse', 128545, 'emocional');

INSERT INTO reacao (nome) VALUES ('Curtir');

/*ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';*/ 