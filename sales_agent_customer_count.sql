SELECT
    emp.FirstName as EmployeeFirstName,
    emp.LastName as EmployeeLastName,
    (
        SELECT COUNT(c.CustomerId) 
        FROM Customer as c
        WHERE emp.EmployeeId = c.SupportRepId
        
    
    ) as TotalCustomers
FROM Employee as emp
WHERE TotalCustomers > 0;

