CREATE TABLE usario(
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    CPF VARCHAR(15),
    senha VARCHAR(45)
);

INSERT INTO usuario(nome,cpf,senha) VALUES
('Gustavo','123.123.123-12', '123'),
('lorrayne','321.321.321-32','321');