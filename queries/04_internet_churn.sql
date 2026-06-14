-- =============================================
-- Query 4: Churn Rate by Internet Service Status
-- Business Question: Do internet users churn at different rates?
-- Expected Insight: Internet users churn at 31.8% 
--                   vs 7.4% for non-internet users
-- =============================================

SELECT 
    CASE 
        WHEN InternetService = 'No' THEN 'No Internet'
        ELSE 'Has Internet'
    END as internet_status,
    COUNT(*) as total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as churn_rate_percent
FROM customers
GROUP BY internet_status;