CREATE TABLE usario(
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    CPF VARCHAR(15),
    senha VARCHAR(45)
);

INSERT INTO usuario(nome,cpf,senha) VALUES
('Gustavo','123.123.123-12', '123'),
('lorrayne','321.321.321-32','321');


CREATE TABLE cidade(

id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    cep VARCHAR(15),
    estado VARCHAR(15)
);

INSERT INTO cidade(nome, cep estado)VALUES
('nova londrina','87.970-000','paraná'),
('marilena','87.960-000','paraná'),


CREATE TABLE funcionario(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
        cpf VARCHAR(15),
        celular VARCHAR(15),
        endereco VARCHAR(255),
    numero int,
    bairro VARCHAR(255),
     email VARCHAR(255),
     cargo VARCHAR(255),
     salario VARCHAR(50),
    cidade_id int,
    FOREIGN KEY (cidade_id) REFERENCES cidade(id)
);


INSERT INTO funcionario(nome, cpf, celular, endereco, numero, bairro , email, cargo, salario, cidade_id) VALUES
('Pamela','777.777.777-77','(44)97777-7777','Rua nova olimpia', 500, 'centro','pamela@gmail.com','gerente',
 '4.500', 2);



CREATE TABLE cliente(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
        cpf VARCHAR(15),
        celular VARCHAR(15),
        endereco VARCHAR(255),
    numero int,
    bairro VARCHAR(255),
     email VARCHAR(255),
    cidade_id int,
    FOREIGN KEY (cidade_id) REFERENCES cidade(id)
    );

    INSERT INTO cliente(nome, cpf, celular, endereco, numero, bairro, email, cidade_id)VALUES
('Dominique','333.333.333-33','(44)93333-3333','rua
Santos',55 , 'centro','dominique@gmail.com',1);



CREATE TABLE venda (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    obs VARCHAR(255),
    valor_total int,
    quantidade_total int,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    cliente_id INT,
    funcionario_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)

);

INSERT INTO venda (obs , valor_total, quantidade_total, cliente_id, funcionario_id)VALUES
('venda com pendêcia', 50, 10, 1, 1);



CREATE TABLE produto (
id int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque int,
    custo int,
    lucro int,
    margen INT


);

INSERT INTO produto (nome, preco, estoque, custo, lucro, margen)VALUES
('mouse', 70, 3, 40, 30, 90),
('teclado', 100, 10, 50, 50, 100);

CREATE TABLE item_venda(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    quantidade int,
    valor DECIMAL(10,2),
    venda_id INT,
    produto_id INT,
    FOREIGN KEY (venda_id) REFERENCES venda(id),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
    


);

INSERT INTO item_venda(quantidade, valor, venda_id,  produto_id)VALUES
(2, 140, 1, 1),
(2, 140, 1, 1);