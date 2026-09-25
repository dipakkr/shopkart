CREATE TABLE orders (
  id           bigserial PRIMARY KEY,
  user_id      bigint NOT NULL REFERENCES users(id),
  amount_paise integer NOT NULL,
  status       text NOT NULL,
  created_at   timestamptz NOT NULL DEFAULT now()
);
