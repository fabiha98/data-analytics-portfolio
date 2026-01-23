WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(revenue) AS total_revenue
    FROM monthly_sales
    GROUP BY DATE_TRUNC('month', order_date)
),
growth_calculation AS (
    SELECT
        month,
        total_revenue,
        LAG(total_revenue) OVER (ORDER BY month) AS prev_month_revenue
    FROM monthly_revenue
)
SELECT
    month,
    total_revenue,
    ROUND(
        ((total_revenue - prev_month_revenue) * 100.0)
        / prev_month_revenue, 2
    ) AS mom_growth_pct
FROM growth_calculation
ORDER BY month;
