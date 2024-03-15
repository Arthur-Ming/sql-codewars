SELECT
  DISTINCT city_name
FROM
  stations
WHERE
  city_name SIMILAR TO '(A|E|I|O|U)%'
ORDER BY
  city_name ASC;