select
  distinct loans.book_id,
  books.title
from
  books
  join loans using(book_id)
where
  loans.book_id not in(
    select
      book_id
    from
      loans
    where
      return_date is null
  )
order by
  loans.book_id desc