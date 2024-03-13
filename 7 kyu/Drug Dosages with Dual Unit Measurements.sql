select
  dose_records.record_id,
  drugs.drug_name,
  dose_records.drug_amount,
  CASE
    WHEN dose_records.check_unit_id is not null THEN concat(
      units.unit_name,
      '/',
      (
        SELECT
          unit_name
        FROM
          units
        WHERE
          unit_id = dose_records.check_unit_id
      )
    )
    ELSE units.unit_name
  END as dose_units
from
  dose_records
  join drugs using(drug_id)
  join units on dose_records.drug_unit_id = units.unit_id
ORDER BY
  drugs.drug_name,
  dose_records.record_id