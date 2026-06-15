-- Query 7: Attrition Rate by Salary Slab
-- Which income bracket sees the most attrition?

SELECT 
    SalarySlab,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY SalarySlab
ORDER BY attrition_rate_pct DESC;
