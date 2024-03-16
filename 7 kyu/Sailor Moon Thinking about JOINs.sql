select
  sailorsenshi.senshi_name as sailor_senshi,
  sailorsenshi.real_name_jpn as real_name,
  cats.name as cat,
  schools.school as school
from
  sailorsenshi
  left join cats on cats.id = sailorsenshi.cat_id
  left join schools on schools.id = sailorsenshi.school_id