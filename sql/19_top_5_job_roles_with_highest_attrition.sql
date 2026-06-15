-- Query 19: Top 5 Job Roles with Highest Attrition

WITH role_attrition AS (
    SELECT 
        JobRole,
        COUNT(*) AS total_employees,
        SUM(AttritionFlag) AS attrited,
        ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
    FROM hr_analytics
    GROUP BY JobRole
)
SELECT 
    JobRole,
    total_employees,
    attrited,
    attrition_rate_pct,
    RANK() OVER (ORDER BY attrition_rate_pct DESC) AS role_rank
FROM role_attrition
ORDER BY attrition_rate_pct DESC
LIMIT 5;