SELECT p.product_id,
ROUND(CAST(SUM(p.price*us.units) AS DECIMAL)/SUM(us.units),2) AS average_price
FROM prices p JOIN UnitsSold us
WHERE us.purchase_date BETWEEN p.start_date AND p.end_date
AND p.product_id = us.product_id
GROUP BY p.product_id;
