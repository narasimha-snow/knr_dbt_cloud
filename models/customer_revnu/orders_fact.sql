select 
  o.orderID,
  o.OrderDate,
  o.CustomerID,
  o.EmployeeID,
  O.StoreID,
  o.StatusCD,
  o.statusdesc,
  count(Distinct o.orderID) as OrderCount,
  Sum(oi.TotalPrice) As Revenue,
  o.updated_at 
from 
  {{ref('orders_stg')}} o
JOIN 
  {{ref('orderitems_stg')}} oi on o.OrderID = oi.OrderID
Group By 
    o.orderID,
  o.OrderDate,
  o.CustomerID,
  o.EmployeeID,
  O.StoreID,
  o.StatusCD,
  o.statusdesc,
  o.updated_at