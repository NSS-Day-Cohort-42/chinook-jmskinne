SELECT emp.FirstName as EmployeeFirstName, emp.LastName as EmployeeLastName, i.InvoiceId, c.FirstName as CustomerFName, c.LastName as CustomerLastName
FROM Employee as emp
JOIN Customer as c on c.SupportRepId = emp.EmployeeId
JOIN Invoice as i on i.CustomerId = c.CustomerId
ORDER BY emp.LastName DESC;