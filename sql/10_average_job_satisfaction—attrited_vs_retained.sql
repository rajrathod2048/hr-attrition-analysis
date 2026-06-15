-- ============================================================
-- CATEGORY C: SATISFACTION & ENGAGEMENT
-- ============================================================

-- Query 10: Average Job Satisfaction — Attrited vs Retained
-- Scale: 1 (Low) to 4 (Very High)

SELECT 
    Attrition,
    ROUND(AVG(JobSatisfaction), 2) AS avg_job_satisfaction,
    ROUND(AVG(EnvironmentSatisfaction), 2) AS avg_env_satisfaction,
    ROUND(AVG(RelationshipSatisfaction), 2) AS avg_relationship_satisfaction
FROM hr_analytics
GROUP BY Attrition;