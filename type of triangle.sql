SELECT 
  CASE 
    WHEN a + b <= c OR b + c <= a OR a + c <= b THEN 'Not A Triangle'
    WHEN a = b and b = c THEN 'Equilateral' 
    WHEN a = b OR b = c OR a = c THEN 'Isosceles'
    WHEN a <> b AND b <> c AND a <> c THEN 'Scalene'
  END AS triangles_types
FROM 
  triangles;