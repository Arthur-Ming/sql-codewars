SELECT
  distinct opinion_giver,
  opinion_receiver,
  current_opinion,
  previous_opinion
FROM
  (
    SELECT
      name as opinion_giver,
      opinion_giver_id
    FROM
      people
      JOIN people_opinions ON people_opinions.opinion_giver_id = people.person_id
  ) giver
  JOIN (
    SELECT
      name as opinion_receiver,
      opinion_giver_id,
      people_opinions.person_id as person_id,
      current_opinion,
      previous_opinion
    FROM
      people
      JOIN people_opinions ON people_opinions.person_id = people.person_id
    WHERE
      previous_opinion IS NOT NULL
      OR current_opinion IS NOT NULL
  ) receiver ON giver.opinion_giver_id = receiver.opinion_giver_id
WHERE
  previous_opinion != current_opinion
  OR previous_opinion IS NULL
  OR current_opinion IS NULL
ORDER BY
  opinion_giver,
  opinion_receiver