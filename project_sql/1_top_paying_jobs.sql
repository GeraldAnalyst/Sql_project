/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest- paying Data scientist roles thata are available remotely.
- Focus on job posting with specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insight into employment
*/

SELECT
    job_id,
    job_title,
    job_schedule_type,
    job_location,
    salary_year_avg,
    job_posted_date,
    name AS company_name

FROM
     job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE job_title_short = 'Data Scientist' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10


