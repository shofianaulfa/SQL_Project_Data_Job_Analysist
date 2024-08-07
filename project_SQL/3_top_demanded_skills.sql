/*
?Questions to Answer
- What are the top-paying jobs for my role?
- What are the skills required for these tip-paying roles?
-What t the most in-demand skilla for my role?
-What are the top skills based on salary for my role?
- What are the most optimal skill to learn?
    ---Optimal : High Demand AND High Paying
*/

/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similiar to query 2
- Identify teh top 5 in demand skills for date analysts.
- Focus on all job postings
- Why? retrieves the tops 5 skills with the highest demand in the job market,
    --Pproviding insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact 
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5