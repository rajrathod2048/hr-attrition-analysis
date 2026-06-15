-- Query 6: Average Monthly Income — Attrited vs Retained
-- Do leavers earn less than those who stay?
SELECT 
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
    ROUND(MIN(MonthlyIncome), 2) AS min_income,
    ROUND(MAX(MonthlyIncome), 2) AS max_income
FROM hr_analytics
GROUP BY Attrition;