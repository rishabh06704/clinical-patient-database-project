/* 
Question 2 - What is the percentage of patients missing information regarding passport number in each gender? 
* Percentage must be a number between 0-100 with 1 decimal place
**/

SELECT GENDER,
ROUND(100.0 * SUM(CASE WHEN PASSPORT IS NULL THEN 1 ELSE 0 END) / COUNT(*), 1) AS missing_passport_percentage
FROM hc848.MITRE_PATIENT
GROUP BY GENDER;



/*
Question 3 - What is the percentage of patients missing information regarding SSN number in each marital status? 
* Percentage must be a number between 0-100 with 1 decimal place
**/

SELECT
marital_status,
ROUND(COUNT(CASE WHEN ssn IS NULL THEN 1 END) * 100.0 / COUNT(*), 1) AS missing_ssn_pct
FROM hc848.MITRE_PATIENT
GROUP BY marital_status;
