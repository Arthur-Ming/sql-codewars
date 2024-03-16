SELECT
  people.id,
  people.name,
  COUNT(toys.name) as toy_count
FROM
  people
  JOIN toys ON toys.people_id = people.id
GROUP BY
  people.id,
  people.name