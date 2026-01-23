WITH rfm_base AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_order_date,
        COUNT(*) AS frequency,
        SUM(order_value) AS monetary
    FROM customer_purchases
    GROUP BY customer_id
),
rfm_calculated AS (
    SELECT
        customer_id,
        DATE_PART('day', CURRENT_DATE - last_order_date) AS recency,
        frequency,
        monetary
    FROM rfm_base
),
rfm_scores AS (
    SELECT
        customer_id,
        NTILE(5) OVER (ORDER BY recency ASC) AS r_score,
        NTILE(5) OVER (ORDER BY frequency DESC) AS f_score,
        NTILE(5) OVER (ORDER BY monetary DESC) AS m_score
    FROM rfm_calculated
)
SELECT
    customer_id,
    r_score,
    f_score,
    m_score,
    (r_score + f_score + m_score) AS rfm_score
FROM rfm_scores
ORDER BY rfm_score DESC;
