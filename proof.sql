-- proof.sql

-- =====================================================================
-- TEST 1: foreign key should refuse a payment_id that does not exist
-- =====================================================================

INSERT INTO payment_application (payment_id, invoice_id, amount_applied, application_date)
VALUES (9999, 1, 100.00, CURRENT_DATE);

-- Error message Neon returned:
-- paste error here


-- =====================================================================
-- TEST 2: check constraint should refuse a negative amount
-- =====================================================================

INSERT INTO payment_application (payment_id, invoice_id, amount_applied, application_date)
VALUES (1, 1, -50.00, CURRENT_DATE);

-- Error message Neon returned:
-- paste error here


-- =====================================================================
-- TEST 3: check constraint should refuse an invalid payment_method
-- =====================================================================

INSERT INTO payment (
    customer_id,
    payment_date,
    payment_method,
    amount_received,
    reference_number
)
VALUES (1, CURRENT_DATE, 'Bitcoin', 500.00, 'BTC-TEST-001');

-- Error message Neon returned:
-- paste error here