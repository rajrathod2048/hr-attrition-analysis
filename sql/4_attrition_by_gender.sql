-- Query 4: Attrition by Gender
-- Is attrition higher among male or female employees?

SELECT 
    Gender,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM
    hr_analytics
GROUP BY Gender
ORDER BY attrition_rate_pct DESC;