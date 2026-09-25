ALTER TABLE orders ADD CONSTRAINT orders_amount_paise_check CHECK (amount_paise > 0);
