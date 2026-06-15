-- Query 1: Overall Attrition Rate
-- What % of total employees have left?
SELECT 
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS total_attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics;