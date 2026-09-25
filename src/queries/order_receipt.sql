SELECT o.id, o.amount_paise, o.status, o.created_at, u.full_name, u.email, u.phone
FROM orders o
JOIN users u ON u.id = o.user_id
WHERE o.id = $1
