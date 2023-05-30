SELECT EmployeeUNI.unique_id , Employees.name 
FROM Employees 
LEFT JOIN EmployeeUNI on IF(Employees.id = EmployeeUNI.id,Employees.id, NULL);
