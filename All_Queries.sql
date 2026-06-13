-- =========================================
-- COVID DATA ANALYSIS QUERIES
-- =========================================
use covid_project;

-- =========================================
-- Query 1: Total Cases by Country
-- =========================================
SELECT location,
       MAX(total_cases) AS total_cases
FROM covid_data
GROUP BY location
ORDER BY total_cases DESC;


-- =========================================
-- Query 2: Total Deaths by Country
-- =========================================
SELECT location,
       MAX(total_deaths) AS total_deaths
FROM covid_data
GROUP BY location
ORDER BY total_deaths DESC;


-- =========================================
-- Query 3: Daily Global Cases
-- =========================================
SELECT date,
       SUM(new_cases) AS global_cases
FROM covid_data
GROUP BY date
ORDER BY date;


-- =========================================
-- Query 4: Vaccination Percentage by Country
-- =========================================
SELECT location,
       MAX((people_vaccinated / population) * 100) AS vaccination_percentage
FROM covid_data
GROUP BY location
ORDER BY vaccination_percentage DESC;