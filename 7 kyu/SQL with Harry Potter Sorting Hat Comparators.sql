select
  *
from
  students
where
  (
    quality1 = 'evil'
    and quality2 = 'cunning'
  )
  or (
    quality1 = 'brave'
    and quality2 != 'evil'
  )
  or (
    quality1 in ('studious', 'intelligent')
    or quality2 in ('studious', 'intelligent')
  )
  or (
    quality1 = 'hufflepuff'
    or quality2 = 'hufflepuff'
  )
order by
  id