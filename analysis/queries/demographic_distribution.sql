--- Question 1 - Report the number of patients per race (in columns) in each county (rows).

SELECT
  county,
  SUM(CASE WHEN RACE = 'white' THEN 1 ELSE 0 END) AS White,
  SUM(CASE WHEN race = 'black' THEN 1 ELSE 0 END) AS Black,
  SUM(CASE WHEN race = 'asian' THEN 1 ELSE 0 END) AS Asian,
  SUM(CASE WHEN race = 'hispanic' THEN 1 ELSE 0 END) AS Hispanic,
  SUM(CASE WHEN race = 'other' THEN 1 ELSE 0 END) AS Other
FROM hc848.MITRE_PATIENT
GROUP BY county;
