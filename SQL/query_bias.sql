-- query review_id_table to find most recent review_date
SELECT review_id, customer_id, review_date
FROM review_id_table
ORDER BY review_date DESC
LIMIT 10;

-- query customers with the highest count in the last year
SELECT c.customer_id, c.customer_count
FROM customers c
LEFT JOIN review_id_table r ON
r.customer_id=c.customer_id
WHERE r.review_date BETWEEN '2014-08-31'
AND '2015-08-31'
GROUP BY c.customer_id
ORDER BY c.customer_count DESC;

-- query vine_table for the customer with the highest helpful votes compared total votes, in the last year
SELECT v.review_id, r.customer_id, v.helpful_votes, v.total_votes
FROM vine_table v
INNER JOIN review_id_table r ON
r.review_id=v.review_id
WHERE r.review_date BETWEEN '2014-08-31'
AND '2015-08-31'
ORDER BY v.helpful_votes DESC;

-- query customer reviews for products with the highest helpful votes in the last year
SELECT p.product_id, p.product_title, v.review_id, r.customer_id, v.helpful_votes
FROM vine_table v
LEFT JOIN review_id_table r
ON r.review_id=v.review_id
LEFT JOIN products p
ON r.product_id=p.product_id
WHERE r.review_date BETWEEN '2014-08-31'
AND '2015-08-31'
ORDER BY v.helpful_votes DESC;