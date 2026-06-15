-- Query 18: Cumulative Attrition Count by Age Group (Window Function)
-- Running total of attrited employees as age group increases
WITH age_attrition AS (
    SELECT 
        AgeGroup,
        SUM(AttritionFlag) AS attrited_in_group
    FROM hr_analytics
    GROUP BY AgeGroup
)
SELECT 
    AgeGroup,
    attrited_in_group,
    SUM(attrited_in_group) OVER (ORDER BY AgeGroup) AS cumulative_attrition
FROM age_attrition
ORDER BY AgeGroup;


