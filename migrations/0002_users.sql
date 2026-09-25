CREATE TABLE users (
  id         bigserial PRIMARY KEY,
  email      text NOT NULL,
  full_name  text,
  phone      text,
  city       text,
  created_at timestamptz NOT NULL DEFAULT now()
);
