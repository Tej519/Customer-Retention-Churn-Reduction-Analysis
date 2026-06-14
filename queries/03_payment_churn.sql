-- =============================================
-- Query 3: Churn Rate by Payment Method
-- Business Question: Which payment methods correlate with higher churn?
-- Expected Insight: Electronic check users churn at 45.3% 
--                   vs 15.2% for auto-pay users
-- =============================================

SELECT 
    PaymentMethod,
    COUNT(*) as total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as churn_rate_percent
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;