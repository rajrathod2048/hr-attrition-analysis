-- Query 14: Attrition Rate by Years at Company (Bucketed)
-- When are employees most likely to leave — early, mid, or late career?
SELECT 
    CASE 
        WHEN YearsAtCompany BETWEEN 0 AND 2  THEN '0-2 Years'
        WHEN YearsAtCompany BETWEEN 3 AND 5  THEN '3-5 Years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        ELSE '10+ Years'
    END AS tenure_bucket,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY tenure_bucket
ORDER BY attrition_rate_pct DESC;

