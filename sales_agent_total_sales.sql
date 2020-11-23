SELECT 
    emp.EmployeeId as ID,
    emp.FirstName as EmployeeFirstName,
    emp.LastName as EmployeeLastName,
    (
        SELECT ROUND(SUM(inv.Total), 2)
        FROM Invoice as inv
        JOIN Customer as c ON c.SupportRepId = emp.EmployeeId
        WHERE inv.CustomerId = c.CustomerId

    ) as TotalAgentSales
FROM Employee as emp
WHERE TotalAgentSales > 1;










