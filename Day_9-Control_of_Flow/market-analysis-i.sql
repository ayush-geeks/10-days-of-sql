select u.user_id as buyer_id, u.join_date,
       sum(case when order_date like '2019%' then 1 else 0 end) as orders_in_2019
from users as u
left join orders as o
on u.user_id = o.buyer_id
group by u.user_id, u.join_date;