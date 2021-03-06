USE my_task;

SELECT dogovors.dogovor, 
       dogovors.birthday,
       dogovors.first_name,
       dogovors.surname,
       dogovors.manager,
       managers.activated,
       managers.removed
FROM dogovors, managers 
WHERE (dogovors.manager = managers.manager) AND (managers.removed IS NULL)
ORDER BY managers.activated DESC, dogovors.birthday; 

