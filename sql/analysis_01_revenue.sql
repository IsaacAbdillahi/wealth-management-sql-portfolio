-- Revenue Analysis

SELECT
    fee_type,
    SUM(fee_amount) AS total_revenue
FROM fees
GROUP BY fee_type
ORDER BY total_revenue DESC;
