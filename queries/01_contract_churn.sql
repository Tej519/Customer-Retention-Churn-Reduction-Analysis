-- =============================================
-- Query 1: Churn Rate by Contract Type
-- Business Question: Which contract type has the highest churn rate?
-- Expected Insight: Month-to-month contracts churn at 42.7% 
--                   vs 2.8% for two-year contracts
-- =============================================

SELECT 
    Contract,
    COUNT(*) as total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as churn_rate_percent
FROM customers
GROUP BY Contract
ORDER BY churn_rate_percent DESC;