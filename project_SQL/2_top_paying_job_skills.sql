/*
Question to Answer
- What are the top-paying jobs for my role?
- What are the skills required for these top=paying roles?
- What are the most in-demands skills for my role?
- What are the top skills based on salary for my role?
- What are the most optimal skills to lears?
    --Optimal: High Demand AND High Paying
*/

/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top  highest-paying Data Analysts jobs from first query
- Add the spesific skills required for these roles
- Why? It provides a detailes look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM 
        job_postings_fact
    LEFT JOIN
        company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
 top_paying_jobs.*,
 skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC


/*
Analysis of Data Analyst Roles and Skills
Here is an analysis of the skills required for the top 10 data analyst roles based on the job postings:

Top Skills Required
SQL - Mentioned in all job postings, indicating it is a fundamental skill for data analysts.
Python - Frequently listed, showing its importance in data analysis.
R - Often required, especially for statistical analysis.
Tableau - Commonly needed for data visualization.
Excel - Still essential for many data analysis tasks.
Azure and AWS - Cloud computing skills are increasingly important.
Power BI - Another popular tool for data visualization.
Pandas and NumPy - Crucial Python libraries for data manipulation and analysis.
Snowflake - Emerging as a key skill for handling data warehousing.
Git, Bitbucket, Jira, Confluence, and Jenkins - DevOps and project management tools are becoming relevant for data analysts.
Insights
Core Technical Skills:

SQL is a must-have for all data analysts, used for querying and managing databases.
Python and R are highly valued for their versatility in data manipulation, analysis, and machine learning.
Excel remains a staple tool, indicating the continued relevance of traditional tools alongside modern technologies.
Data Visualization:

Tableau and Power BI are prominent tools for creating interactive and shareable dashboards, highlighting the importance of presenting data insights effectively.
Cloud Computing and Big Data:

Skills in Azure and AWS are essential, reflecting the industry's shift towards cloud-based solutions.
Snowflake is noted for data warehousing, showing the need for managing and analyzing large datasets efficiently.
Specialized Tools and Libraries:

Pandas and NumPy are key libraries in Python for data manipulation and numerical analysis, indicating the need for proficiency in these tools.
Knowledge of tools like Git, Bitbucket, Jira, and Confluence suggests that data analysts are expected to work closely with development and operations teams.
Statistical Analysis:

R is frequently mentioned, underscoring its importance in performing statistical analysis and data modeling.
Emerging Trends:

The inclusion of tools like Databricks and Hadoop indicates a trend towards big data technologies.
PowerPoint is mentioned, indicating that data analysts should be able to present their findings effectively to non-technical stakeholders.
Versatility and Adaptability:

The varied skill sets required for different roles indicate that data analysts need to be versatile and adaptable to various tools and technologies.
*/