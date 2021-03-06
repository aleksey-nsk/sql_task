USE my_task;

SELECT dogovors.manager,
       COUNT(dogovors.manager) AS how_many_times,
       SUM(sales.summ) AS result_profit 
FROM sales, dogovors
WHERE sales.dogovor = dogovors.dogovor
GROUP BY dogovors.manager
ORDER BY result_profit DESC; 

