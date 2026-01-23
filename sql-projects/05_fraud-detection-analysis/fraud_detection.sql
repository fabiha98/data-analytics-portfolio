WITH transaction_stats AS (
    SELECT
        customer_id,
        COUNT(*) AS total_transactions,
        AVG(amount) AS avg_amount,
        MAX(amount) AS max_amount
    FROM transactions
    GROUP BY customer_id
),
daily_transactions AS (
    SELECT
        customer_id,
        transaction_date,
        COUNT(*) AS daily_txn_count,
        SUM(amount) AS daily_amount
    FROM transactions
    GROUP BY customer_id, transaction_date
)
SELECT
    d.customer_id,
    d.transaction_date,
    d.daily_txn_count,
    d.daily_amount,
    s.avg_amount,
    s.max_amount
FROM daily_transactions d
JOIN transaction_stats s
    ON d.customer_id = s.customer_id
WHERE
    d.daily_txn_count >= 3
    OR d.daily_amount > s.avg_amount * 3
ORDER BY d.daily_amount DESC;
