# shopkart

Tiny shop backend: users, orders, and a handful of SQL queries.
Schema lives in `migrations/` (applied in order); queries live in `src/queries/`.
CI applies every migration to a fresh Postgres 16 on each PR.
