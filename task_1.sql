USE my_task;

SELECT dogovor, 
       COUNT(dogovor) AS different_products,
       SUM(product_count) AS result_amount,
       SUM(summ) AS result_summ,
       MIN(sale_date) AS earliest_date
FROM sales
GROUP BY dogovor
HAVING (SUM(product_count) > 3) AND (SUM(summ) > 1000); 

