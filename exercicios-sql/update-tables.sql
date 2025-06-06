
-- Atualizando dados de um cobrador (collector)
UPDATE collector
SET name = '',
    business_name = '',
    address = '',
    phone = ''
WHERE collector_id = '';

-- Atualizando dados de um pagador (payer)
UPDATE payer
SET name = '',
    birth_date = '',
    address = '',
    phone = ''
WHERE payer_id = '';

-- Atualizando dados de uma cobrança (billing)
UPDATE billing
SET amount = 0.00,
    description = '',
    issue_date = '',
    due_date = '',
    status = '',
    payment_date = '',
    payer_id = '',
    collector_id = ''
WHERE billing_id = '';

