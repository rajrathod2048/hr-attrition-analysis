-- Query 2: Attrition Count and Rate by Department
-- Which department loses the most people?
SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY Department
ORDER BY attrition_rate_pct DESC;
