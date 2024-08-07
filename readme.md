# Introduction
Hi Data Enthusiast
This is what you looking for. 
Diving more for top-paying jobs, in-demand skills and where high demand meet high salary in data analytics

SQL queries: Check this out : [project_SQL folder](/project_SQL/)
# Background
Data Analytics help us to make decison also giving an insightfull about what trend that happened. In this project you can find the journey of analytics data

### The questions I wanted to answer through my SQL queris were:
1. What are the top-paying data analyst jobs?
2. What skills are requires for these top-payings job?
3. What skills are most in demand for data analytics?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
For analyze these tools may helpful for you:
- **SQL :** The main tools that help us to find and analyze data
- **PostgreSQL:** The most popular and useful database management
- **Visual Studio Code :** All in one here, you can try by yourself
- **Git and Github :** Essential tools because we are interacting right now right?

# The Analysis
Each query for this project aimed at investigating specific aspects of data job market. 

### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
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
```
![Top Paying Roles](assets\1_top_paying_jobs.png)

*This graph help us knew slightly what kind of the top paying jobs in 2023*


# What I Learned
# Conclusions
