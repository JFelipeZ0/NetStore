select
    product_id,
    product_name,
    artist,
    category,
    price,
    'USA' as region
from {{ source('netstore', 'products_usa') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'Colombia' as region
from {{ source('netstore', 'products_colombia') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'India' as region
from {{ source('netstore', 'products_india') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'Japan' as region
from {{ source('netstore', 'products_japan') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'China' as region
from {{ source('netstore', 'products_china') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    country as region
from {{ source('netstore', 'products_eu') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    country as region
from {{ source('netstore', 'products_uk') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'Mexico' as region
from {{ source('netstore', 'products_mexico') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    'Venezuela' as region
from {{ source('netstore', 'products_venezuela') }}