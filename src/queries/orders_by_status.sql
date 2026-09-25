SELECT id, user_id, amount_paise, created_at
FROM orders
WHERE status = $1
ORDER BY created_at DESC
LIMIT 100
