


SELECT 
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
     job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    location_category;


-- SELECT 
--     job_title_short,
--     job_location,
--     CASE
--         WHEN job_location = 'Anywhere' THEN 'Remote'
--         WHEN job_location = 'New York, NY' THEN 'Local'
--         ELSE 'Onsite'
--     END AS location_category
-- FROM job_postings_fact;

/*
Lable new column as follows;
- 'Anywhere' jobs as 'Remote';
- 'New York, NY' as 'Local'
- Otherwise 'Onsite
*/

-- SELECT*
-- FROM march_jobs;


-- CREATE TABLE january_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT (MONTH FROM job_posted_date) = 1;

-- CREATE TABLE february_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT (MONTH FROM job_posted_date) = 2;

-- CREATE TABLE march_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT (MONTH FROM job_posted_date) = 3;




