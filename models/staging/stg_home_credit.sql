SELECT *
FROM {{ source('home_credit', 'APPLICATION_DATA') }}