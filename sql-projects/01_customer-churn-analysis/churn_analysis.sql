WITH customer_activity AS (
    SELECT
        customer_id,
        MIN(transaction_date) AS first_purchase_date,
        MAX(transaction_date) AS last_purchase_date,
        COUNT(*) AS total_purchases
    FROM transactions
    GROUP BY customer_id
),
churn_flag AS (
    SELECT
        customer_id,
        total_purchases,
        DATE_PART('day', CURRENT_DATE - last_purchase_date) AS days_inactive,
        CASE
            WHEN DATE_PART('day', CURRENT_DATE - last_purchase_date) > 60
            THEN 1 ELSE 0
        END AS is_churned
    FROM customer_activity
)
SELECT
    is_churned,
    COUNT(*) AS customers,
    AVG(total_purchases) AS avg_purchases
FROM churn_flag
GROUP BY is_churned;
