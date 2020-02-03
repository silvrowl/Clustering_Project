SELECT * FROM (SELECT 
	basket_id, 
    cust_id,
    time_id, 
    store_id,
    stddev(quantity) as std_quantity,  
    count(spend) as nunique_products,
    sum(quantity) as n_products, 
    sum(spend) as sum_spend
    FROM Transactions 
    WHERE cust_id is not NULL
GROUP BY basket_id
ORDER BY cust_id DESC )  as sub
LEFT JOIN Customers ON sub.cust_id = Customers.cust_id
LEFT JOIN Baskets ON sub.basket_id = Baskets.basket_id
LEFT JOIN Stores ON sub.store_id = Stores.store_id 
LEFT JOIN Timestamps ON sub.time_id = Timestamps.time_id
HAVING cust_lifestage='YA' 
and cust_price_sensitivity != 'XX'   
and basket_dominant_mission != 'XX'   
and basket_price_sensitivity != 'XX' 
and basket_type != 'XX'   
LIMIT 50000;