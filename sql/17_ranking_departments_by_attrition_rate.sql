-- Query 17: Ranking Departments by Attrition Rate (Window Function)
-- Uses RANK() to rank departments from highest to lowest attrition
WITH dept_attrition AS (
    SELECT 
        Department,
        COUNT(*) AS total_employees,
        SUM(AttritionFlag) AS attrited,
        ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
    FROM hr_analytics
    GROUP BY Department
)
SELECT 
    Department,
    total_employees,
    attrited,
    attrition_rate_pct,
    RANK() OVER (ORDER BY attrition_rate_pct DESC) AS attrition_rank
FROM dept_attrition;
