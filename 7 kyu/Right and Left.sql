SELECT
  SUBSTRING(project, 0, commits + 1) as project,
  SUBSTRING(
    address,
    length(address) - contributors + 1,
    contributors + 1
  ) as address
FROM
  repositories