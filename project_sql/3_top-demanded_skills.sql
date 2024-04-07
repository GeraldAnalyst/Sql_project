/*
Question: What are the most in-demand skills for data scientist?
- Join job postings to inner join tables similar to query 2
- Identify the top 5 in-demand skills for a data scientist.
- Focus on all job postings.
- Why? Retrieve the top 5 skills with the highest demand in the job market,
  providing insights into the most valuabele skills for job seekers.
*/


SELECT
    skills,
    COUNT(skills_dim.skill_id) AS in_demand_count

FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Scientist' 
GROUP BY 
    skills
ORDER BY 
    in_demand_count DESC
LIMIT 5

/*
Here are the results for the most in-demand skills for Data Scientist job 
[
  {
    "skills": "python",
    "in_demand_count": "114016"
  },
  {
    "skills": "sql",
    "in_demand_count": "79174"
  },
  {
    "skills": "r",
    "in_demand_count": "59754"
  },
  {
    "skills": "sas",
    "in_demand_count": "29642"
  },
  {
    "skills": "tableau",
    "in_demand_count": "29513"
  }
]
*/
