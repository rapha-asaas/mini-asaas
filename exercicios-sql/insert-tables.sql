-- Inserindo dados na tabela collector ("dono/cobrador")
INSERT INTO collector (cpf_cnpj, name, business_name, address, phone)
VALUES();

-- Inserindo dados na tabela payer ("pagador")
INSERT INTO payer (cpf_cnpj, name, birth_date, address, phone)
VALUES();

-- Inserindo dados na tabela billing ("cobrança")
INSERT INTO billing (amount, description, issue_date, due_date, status, payment_date, payer_id, collector_id)
VALUES();