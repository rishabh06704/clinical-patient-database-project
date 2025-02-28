/*
Question 4 - What is the County in Massachusetts with higher healthcare expenses and what is the percentage of those expenses comparing to all expenses in that same state? 
* Percentage must be a number between 0-100 with 1 decimal place
**/

SELECT county,
ROUND(SUM(healthcare_expenses) * 100.0 / (SELECT SUM(healthcare_expenses) FROM hc848.MITRE_PATIENT WHERE state = 'Massachusetts'), 1) AS percentage_of_state_expenses
FROM hc848.MITRE_PATIENT
WHERE state = 'Massachusetts'
GROUP BY county
ORDER BY SUM(healthcare_expenses) DESC
FETCH FIRST 5 ROWS ONLY;


/*
Question 5 - What is the distribution (%) of patients living in houses (or similar) vs patients living in apartments (or similar) in each County in Massachusetts?
* Percentage must be a number between 0-100 with 1 decimal place
**/

SELECT county,
ROUND(SUM(CASE WHEN INSTR(ADDRESS, 'Apt') > 0 OR INSTR(ADDRESS, 'Unit') > 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS Apartment_Percentage,
ROUND(SUM(CASE WHEN INSTR(ADDRESS, 'Apt') = 0 AND INSTR(ADDRESS, 'Unit') = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS Houses_Percentage  
FROM hc848.MITRE_PATIENT
WHERE state = 'Massachusetts'
GROUP BY county;
