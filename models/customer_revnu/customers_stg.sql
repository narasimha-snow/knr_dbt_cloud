{{ config(materialized="table") }}

select
    customerid,
    firstname,
    lastname,
    email,
    phone,
    address,
    city,
    state,
    zipcode,
    updated_at,
    concat(firstname, ',', lastname) as customername
from {{ source("landing", "customers") }}
