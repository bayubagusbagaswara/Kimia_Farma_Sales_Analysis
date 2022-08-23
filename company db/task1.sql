select category_id,
    count(1)
from companies
group by 1
having count(1) > 3;