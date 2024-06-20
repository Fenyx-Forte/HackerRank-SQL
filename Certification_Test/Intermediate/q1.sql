select
    p.sku
  , p.product_name
from
  product as p
where
  p.id not in (
    select distinct
      i.product_id
    from
      invoice_item as i
  )
order by
  p.sku asc;