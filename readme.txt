lukeb.co/sql_project_csvs

Subqueris and CTEs
Subqueris and Common Table Expressions (CTEs): Used for organizing and simplifying complex queries.
-Helps break down the query into smaller, more manageablle parts
- When to use one over the other?
--Subqueris ara for simpler queries
-- CTEs are for more complex queries

Subqueris: query nested inside a larger query
It can be used in SLEECT, FROM, adn WHERE clauses.
SELECT*
FROM (--SubQuery starts here
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT (MONTH FROM job_posted_date) = 1
) AS january_jobs;
-- Subquery ends here 

Common Table Expressions (CTEs) : DEFINE A TEMPORARY RESULT SET THAT YOU CAN REFERENCE
- Can reference within a SELECT, INSERT, UPDATE, or DELETE statement
- Defined with WITH

WITH january_jobs AS (-- CTE definition starts here
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
) --CTE definition end here

SELECT *
FROM january_jobs; 

//UNION OPERATORS
Combine result sets of two or more SELECT statements into a single result set.
- UNION : Remove duplicate rows
- UNION ALL : includes all duplicate rowsth
- They need to have the same amount of columns, and the data type must match
- Gets rid of duplicate rows (unlike UNION ALL)
--All rows are unique


SELECT column_name
FROM table_one

UNION -- combine the two tables

SELECT column_name
FROM table_two;

Note: Each SELECT statement within teh UNION must have the same number of columns in the result sets with similiar types

//UNION ALL
Notes:
- UNION ALL : combine the result of two more SELECT statements
- They need to have the same amount of columns, and the data type must match

SELECT column_name
FROM table_one

UNION ALL -- combine the two tables

SELECT column_name
FROM table_two;

- Returns all rows, even duplicates (unlike UNION)
    --Personal Notw: I mostly use this to combine two tables together
