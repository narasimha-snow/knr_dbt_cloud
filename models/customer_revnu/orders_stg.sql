

select 
 OrderID,
 OrderDate,
 CustomerID,
 EmployeeID,
 StoreID,
 Status as StatusCD,
 case 
   when status= '01' then 'In Progress'
   when status = '02' then 'Completed'
   when status = '03' then 'Cancelled'
   ELSE NULL
 END AS StatusDesc,
 case
   when StoreId=1000 then 'Online'
   Else 'In-Store'
 end as ORDER_CHANNEL,
 Updated_at,
from {{source('landing','orders')}}