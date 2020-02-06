Select prod_code_40,prod_code_30,prod_code_20,prod_code_10, count(distinct prod_id) as product_count FROM Products 
Group by prod_code_40,prod_code_30,prod_code_20,prod_code_10