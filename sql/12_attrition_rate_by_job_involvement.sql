-- Query 12: Attrition Rate by Job Involvement
-- Scale: 1 (Low) to 4 (Very High) — less involved = more likely to leave?
SELECT 
    JobInvolvement,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY JobInvolvement
ORDER BY JobInvolvement;