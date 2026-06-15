-- Query 11: Attrition Rate by Work-Life Balance Score
-- Scale: 1 (Bad) to 4 (Best) — does poor balance drive attrition?
SELECT 
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(AttritionFlag) AS attrited,
    ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hr_analytics
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;