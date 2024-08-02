/*
CTEs
Find the companies that have the most job openings.
- Get the total number of job postings per company id
- Return the total number of jobs with the company name
*/

WITH company_job_count AS (
    SELECT
        company_id,
        COUNT(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id
)

SELECT 
    company_dim.name AS company_name,
    company_job_count.total_jobs
FROM 
    company_dim
LEFT JOIN
    company_job_count ON company_job_count.company_id = company_dim.company_id
ORDER BY
    total_jobs DESC


--Subqueries
-- SELECT 
--     company_id,
--     name AS company_name
-- FROM 
--     company_dim
-- WHERE company_id IN (
--     SELECT
--         company_id
--     FROM
--         job_postings_fact
--     WHERE
--         job_no_degree_mention = true
--     ORDER BY
--         company_id
--     )


-- WITH january_jobs AS (-- CTE definition starts here
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 1
-- ) --CTE definition end here

-- SELECT *
-- FROM january_jobs;

-- SELECT*
-- FROM (--SubQuery starts here
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT (MONTH FROM job_posted_date) = 1
-- ) AS january_jobs;
-- -- Subquery ends here 