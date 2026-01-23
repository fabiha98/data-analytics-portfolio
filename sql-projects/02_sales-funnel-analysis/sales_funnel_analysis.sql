WITH stage_counts AS (
    SELECT
        stage,
        COUNT(DISTINCT lead_id) AS leads_count
    FROM sales_funnel_data
    GROUP BY stage
),
funnel AS (
    SELECT
        stage,
        leads_count,
        LAG(leads_count) OVER (ORDER BY
            CASE stage
                WHEN 'Lead' THEN 1
                WHEN 'Qualified' THEN 2
                WHEN 'Proposal' THEN 3
                WHEN 'Closed Won' THEN 4
                WHEN 'Closed Lost' THEN 5
            END
        ) AS previous_stage_count
    FROM stage_counts
)
SELECT
    stage,
    leads_count,
    ROUND(
        (leads_count * 100.0) / previous_stage_count, 2
    ) AS conversion_rate_pct
FROM funnel
WHERE previous_stage_count IS NOT NULL;
