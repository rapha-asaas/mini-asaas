CREATE DATABASE mini_asaas;

CREATE TABLE payer(
	payer_id INT PRIMARY KEY AUTO_INCREMENT,
    cpf_cnpj VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    birth_date DATE,
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE collector(
	collector_id INT PRIMARY KEY AUTO_INCREMENT,
	cpf_cnpj VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    business_name VARCHAR(255), 
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE billing(
	billing_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10,2) NOT NULL,
    description TEXT,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,

    status ENUM('PENDING', 'PAID', 'OVERDUE', 'CANCELED') NOT NULL DEFAULT 'PENDING',
    payment_date DATE,

    payer_id INT NOT NULL,
    collector_id INT NOT NULL,    
    
    FOREIGN KEY(payer_id) REFERENCES payer(payer_id),
    FOREIGN KEY(collector_id) REFERENCES collector(collector_id)
);