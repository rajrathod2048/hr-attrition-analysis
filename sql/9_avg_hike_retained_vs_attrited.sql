-- Query 9: Average Salary Hike — Attrited vs Retained
-- Did leavers receive lower salary hikes?

SELECT 
    Attrition,
    ROUND(AVG(PercentSalaryHike), 2) AS avg_salary_hike_pct
FROM hr_analytics
GROUP BY Attrition;