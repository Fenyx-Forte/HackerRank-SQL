with count_contact as (
  select
      c.user_account_id
    , c.customer_id
    , count(*) as num_contact
  from
    contact as c
  group by
      c.user_account_id
    , c.customer_id
)
select
    u.id
  , u.first_name
  , u.last_name
  , c.id
  , c.customer_name
  , cc.num_contact
from
  count_contact as cc
inner join
  customer as c
    on
      cc.customer_id = c.id
inner join
  user_account as u
    on
      cc.user_account_id = u.id
where
  cc.num_contact > 1
order by
  u.id asc;