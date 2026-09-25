-- Every signup path now collects a name; backfilled in ops ticket SK-212.
ALTER TABLE users ALTER COLUMN full_name SET NOT NULL;
