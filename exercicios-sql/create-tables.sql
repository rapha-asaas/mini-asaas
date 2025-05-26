CREATE DATABASE mini_asaas_db;

CREATE TABLE pagador(
	pagador_id INT PRIMARY KEY AUTO_INCREMENT,
    cpf_cnpj VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_nasc DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(20)
);

CREATE TABLE cobranca(
	cobranca_id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    data_emissao DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    descricao TEXT,    
    pagador_id INT NOT NULL,
    cobrador_id INT NOT NULL,    
    
    FOREIGN KEY(pagador_id) REFERENCES pagador(pagador_id),
    FOREIGN KEY(cobrador_id) REFERENCES cobrador(cobrador_id)
);

CREATE TABLE cobrador(
	cobrador_id INT PRIMARY KEY AUTO_INCREMENT,
	cpf_cnpj VARCHAR(20) UNIQUE NOT NULL,
    nome_razao_social VARCHAR(255),
    nome_fantasia VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(20)
);