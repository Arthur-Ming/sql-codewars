SELECT
  race,
  COUNT(*) as count
FROM
  demographics
GROUP BY
  race
ORDER BY
  count DESC