-- Query 13: High Overtime + Low Satisfaction — The Burnout Profile
-- Employees most at risk: working overtime AND low job satisfaction
SELECT 
    OverTime,
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
WHERE OverTime = 'Yes' AND JobSatisfaction IN (1, 2)
GROUP BY OverTime, JobSatisfaction
ORDER BY attrition_rate_pct DESC;
