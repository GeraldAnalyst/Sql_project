# Introduction
 The project delves into the realm of data science job market leveraging the power of SQL to extract actionable insight from a rich dataset encompassing a myriad of job postings. It aim to unravel the top paying jobs, top paying job skills, in demand skills and where high demand meets high salary in data scientist role.
 
 SQL queries? Check them out here: 
 [project_sql folder](/project_sql/)

# Background
Driven by the quest to navigate the Data Scientist job market effectively. The aim of this project was to pinpoint the top paying job in data science job market and valuable skills required for the jobs and provide insight on the ones in high demand and lucrative salaries. 

Data sources is from a tutor [SQL tutorial](https://lukeb.co/sql_project_csvs). It's a rich dataset with insight on job titles, job location, average salary, job posted date, essential skills and companies.

### The research questions I wanted to answer in this projcet were:
1.	What are the top-paying jobs for my role?
2.	What are the skills required for these top-paying roles?
3.	What are the most in-demand skills for my role?
4.	What are the top skills based on salary for my Data scientist?
5.	What are the most optimal skills to learn?
a.	Optimal: High Demand AND High Paying


# Tool used
To work on this project I harnessed the power of several tools:

- **SQL**:  The backbone of my analysis allowing me to query the database and unravel actionable insight 
- **PostgreSQL**: The ideal database management system I chose for handling job postings dataset.
- **Visual studio code**: My preferred database management and executing SQL queries.
- **Git and GitHub**: Essential platform to store, manage and share repositories of my work and allows issue tracking, code review, pull request and project management.

# The Analysis
This part displays the queries that addresses the questions of this project aiming at investigating the specific aspect of data scientist job market. Here is how I approached the questions. 
## Top paying Data scientist jobs
To identify the top paying data scientist jobs, I filtered Data scientist role from the dataset, positioned it with average yearly salary and location, focusing on the job work from home (remote). 
The idea is to determine which Data scientist role earns highest average yearly salary compared to others. Here is the queries. 

```sql 
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
```


# What I learned

# Conclusion

