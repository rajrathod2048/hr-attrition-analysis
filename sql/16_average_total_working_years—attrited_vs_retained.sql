-- Query 16: Average Total Working Years — Attrited vs Retained
-- Do leavers have less overall experience?
SELECT 
    Attrition,
    ROUND(AVG(TotalWorkingYears), 2) AS avg_total_working_years,
    ROUND(AVG(YearsAtCompany), 2) AS avg_years_at_company,
    ROUND(AVG(YearsInCurrentRole), 2) AS avg_years_in_role
FROM hr_analytics
GROUP BY Attrition;
