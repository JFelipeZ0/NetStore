select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'USA' as region
from {{ source('netstore', 'products_usa') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'Colombia' as region
from {{ source('netstore', 'products_colombia') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'India' as region
from {{ source('netstore', 'products_india') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'Japan' as region
from {{ source('netstore', 'products_japan') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'China' as region
from {{ source('netstore', 'products_china') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    country,
    'EU' as region
from {{ source('netstore', 'products_eu') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    country,
    'UK' as region
from {{ source('netstore', 'products_uk') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'Mexico' as region
from {{ source('netstore', 'products_mexico') }}

union all

select
    product_id,
    product_name,
    artist,
    category,
    price,
    currency,
    null as country,
    'Venezuela' as region
from {{ source('netstore', 'products_venezuela') }}