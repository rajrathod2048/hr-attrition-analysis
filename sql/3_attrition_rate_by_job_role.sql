-- Query 3: Attrition Rate by Job Role
-- Which role has the highest flight risk?

SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM
    hr_analytics
GROUP BY JobRole
ORDER BY attrition_rate_pct DESC;  