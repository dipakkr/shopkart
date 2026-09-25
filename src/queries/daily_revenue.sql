SELECT date_trunc('day', created_at) AS day, sum(amount_paise) AS revenue_paise, count(*) AS orders
FROM orders
WHERE status IN ('paid', 'shipped') AND created_at >= $1
GROUP BY 1
ORDER BY 1
