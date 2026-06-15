-- Query 5: Attrition by Marital Status
-- Do single employees leave more than married ones?

SELECT 
    MaritalStatus,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY MaritalStatus
ORDER BY attrition_rate_pct DESC;
