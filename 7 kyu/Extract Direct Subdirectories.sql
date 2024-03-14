SELECT
  DISTINCT SPLIT_PART(path, '/', 5) AS subdirectory
FROM
  (
    SELECT
      *
    FROM
      directories
    WHERE
      path LIKE('/home/user/pictures/_%')
  ) as s
ORDER BY
  subdirectory