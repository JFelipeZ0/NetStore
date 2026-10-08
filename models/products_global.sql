select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'USA' as region
from {{ source('netstore', 'products_usa') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'USD'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'Colombia' as region
from {{ source('netstore', 'products_colombia') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'COP'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'India' as region
from {{ source('netstore', 'products_india') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'INR'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'Japan' as region
from {{ source('netstore', 'products_japan') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'JPY'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'China' as region
from {{ source('netstore', 'products_china') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'CNY'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    country as region
from {{ source('netstore', 'products_eu') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'EUR'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    country as region
from {{ source('netstore', 'products_uk') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'GBP'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'Mexico' as region
from {{ source('netstore', 'products_mexico') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'MXN'

union all

select
    product_id,
    product_name,
    artist,
    category,
    price * exchange_rates.usd_rate as price,
    'Venezuela' as region
from {{ source('netstore', 'products_venezuela') }}
join {{ source('netstore', 'exchange_rates') }} exchange_rates
    on exchange_rates.currency = 'VES'