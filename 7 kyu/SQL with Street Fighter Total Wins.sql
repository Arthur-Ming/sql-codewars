select
  fighters.name,
  sum(fighters.won) as won,
  sum(fighters.lost) as lost
from
  fighters
  join winning_moves on winning_moves.id = fighters.move_id
  and winning_moves.move not in ('Hadoken', 'Shouoken', 'Kikoken')
group by
  fighters.name
order by
  won desc
limit
  6