
CREATE DATABASE IF NOT EXISTS job;
USE job;


SELECT *
FROM india_job_market_dataset;


SELECT COUNT(*) AS total_jobs
FROM india_job_market_dataset;


SELECT
    `Company Name`,
    COUNT(*) AS total_jobs
FROM india_job_market_dataset
GROUP BY `Company Name`
ORDER BY total_jobs DESC
LIMIT 10;


SELECT
    `Job Location`,
    COUNT(*) AS total_jobs
FROM india_job_market_dataset
GROUP BY `Job Location`
ORDER BY total_jobs DESC
LIMIT 5;


SELECT
    `Job Title`,
    `Company Name`,
    `Salary Range`
FROM india_job_market_dataset
ORDER BY `Salary Range` DESC
LIMIT 10;


SELECT
    `Job Type`,
    COUNT(*) AS total_jobs
FROM india_job_market_dataset
GROUP BY `Job Type`
ORDER BY total_jobs DESC;


SELECT
    COUNT(*) AS machine_learning_jobs
FROM india_job_market_dataset
WHERE `Skills Required` LIKE '%Machine Learning%';


SELECT
    `Experience Required`,
    ROUND(AVG(`Salary Range`), 2) AS average_salary
FROM india_job_market_dataset
GROUP BY `Experience Required`
ORDER BY average_salary DESC;


SELECT
    `Skills Required`,
    COUNT(*) AS total_jobs
FROM india_job_market_dataset
GROUP BY `Skills Required`
ORDER BY total_jobs DESC
LIMIT 10;


SELECT
    `Company Size`,
    COUNT(*) AS total_jobs
FROM india_job_market_dataset
GROUP BY `Company Size`
ORDER BY total_jobs DESC;


SELECT
    `Company Name`,
    COUNT(*) AS remote_jobs
FROM india_job_market_dataset
WHERE `Remote/Onsite` = 'Remote'
GROUP BY `Company Name`
ORDER BY remote_jobs DESC
LIMIT 10;


SELECT
    `Job Title`,
    `Company Name`,
    `Education Requirement`
FROM india_job_market_dataset
WHERE `Education Requirement` LIKE '%B.Tech%';
