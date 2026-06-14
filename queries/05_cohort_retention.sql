-- =============================================
-- Query 5: Cohort Retention Analysis
-- Business Question: How does retention vary by signup month and contract type?
-- Expected Insight: Month-to-month contracts drop 40-50% by Month 3
-- =============================================

WITH customer_tenure AS (
    SELECT 
        customerID,
        Contract,
        PaymentMethod,
        tenure,
        Churn,
        DATE('now', '-' || tenure || ' months') as signup_date
    FROM customers
),

cohorts AS (
    SELECT 
        strftime('%Y-%m', signup_date) as cohort_month,
        Contract,
        customerID,
        tenure,
        Churn
    FROM customer_tenure
    WHERE tenure IS NOT NULL
)

SELECT 
    cohort_month,
    Contract,
    COUNT(DISTINCT customerID) as total_customers,
    ROUND(100.0 * SUM(CASE WHEN tenure >= 1 THEN 1 ELSE 0 END) / COUNT(DISTINCT customerID), 1) as month1_retention_pct,
    ROUND(100.0 * SUM(CASE WHEN tenure >= 3 THEN 1 ELSE 0 END) / COUNT(DISTINCT customerID), 1) as month3_retention_pct,
    ROUND(100.0 * SUM(CASE WHEN tenure >= 6 THEN 1 ELSE 0 END) / COUNT(DISTINCT customerID), 1) as month6_retention_pct,
    ROUND(100.0 * SUM(CASE WHEN tenure >= 12 THEN 1 ELSE 0 END) / COUNT(DISTINCT customerID), 1) as month12_retention_pct
FROM cohorts
GROUP BY cohort_month, Contract
ORDER BY cohort_month, Contract;