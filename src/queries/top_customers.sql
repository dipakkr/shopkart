SELECT u.id, u.full_name, u.city, sum(o.amount_paise) AS total_paise
FROM users u
JOIN orders o ON o.user_id = u.id
WHERE o.status <> 'refunded'
GROUP BY u.id, u.full_name, u.city
ORDER BY total_paise DESC
LIMIT $1
