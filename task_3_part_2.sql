USE my_task;

SELECT sales.dogovor,
       sales.summ,
       dogovors.first_name,
       dogovors.surname,
       dogovors.manager,
       managers.activated,
       managers.removed
FROM sales, dogovors, managers 
WHERE (dogovors.manager = managers.manager) 
  AND (managers.removed IS NULL) 
  AND (sales.dogovor = dogovors.dogovor)
ORDER BY managers.activated DESC, sales.summ DESC; 

