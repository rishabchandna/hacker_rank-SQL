
SELECT CONCAT(name, occupations) AS names
FROM (
  SELECT name, 
         CASE 
           WHEN occupation = 'Doctor' THEN '(D)' 
           WHEN occupation = 'Actor' THEN '(A)' 
           WHEN occupation = 'Professor' THEN '(P)' 
           WHEN occupation = 'Singer' THEN '(S)'
         END AS occupations
  FROM occupations
  ORDER BY name ASC
) AS k
UNION 
SELECT CONCAT('There are a total of', ' ', num_occ, ' ', occupation, 's','.') AS title
FROM (
  SELECT COUNT(occupation) AS num_occ, lower(occupation) as occupation
  FROM occupations
  GROUP BY occupation
  ORDER BY num_occ ASC, occupation ASC
) AS c 
ORDER BY names ASC;