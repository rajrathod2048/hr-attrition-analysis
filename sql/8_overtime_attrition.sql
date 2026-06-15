-- Query 8: OverTime vs Attrition
-- Does working overtime significantly increase the chance of leaving?
SELECT 
    OverTime,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM
    hr_analytics
GROUP BY OverTime
ORDER BY attrition_rate_pct DESC;