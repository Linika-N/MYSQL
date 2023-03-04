SELECT product_name,manufacturer,price
FROM phone_base.phone
WHERE product_count <2;

SELECT *
FROM phone_base.phone
WHERE manufacturer LIKE 'Samsung'