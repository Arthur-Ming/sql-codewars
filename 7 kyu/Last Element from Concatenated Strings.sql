select
  title,
  CASE
    WHEN array_length(regexp_split_to_array(title, '\+'), 1) = 1 THEN null
    ELSE split_part(
      title,
      '+',
      array_length(regexp_split_to_array(title, '\+'), 1)
    )
  END as last_part
from
  split_titles
order by
  id desc