-- Query 15: Stuck Employees — No Promotion in 5+ Years
-- Employees who haven't been promoted in 5+ years — do they leave more?
SELECT 
    CASE 
        WHEN YearsSinceLastPromotion >= 5 THEN 'No Promotion 5+ Years'
        ELSE 'Promoted Within 5 Years'
    END AS promotion_status,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY promotion_status
ORDER BY attrition_rate_pct DESC;
