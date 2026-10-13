SELECT
    *
FROM
    {{ ref('mart_listings_with_hosts') }}
WHERE minimum_nights < 1
LIMIT 10