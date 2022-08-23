create or replace table category2 as
select *
from categories
where status = 'active';