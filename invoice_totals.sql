SELECT 
    i.Total as InvoiceTotal, 
    c.FirstName as CustomerFName, 
    c.LastName as CustomerLastName,
    c.Company as CustomerCompany,
    emp.FirstName as AgentFirstName, 
    emp.LastName as AgentLastName, 
    i.BillingCountry as InvoiceBillingCountry
FROM Employee as emp
JOIN Customer as c on c.SupportRepId = emp.EmployeeId
JOIN Invoice as i on i.CustomerId = c.CustomerId
ORDER BY c.LastName DESC;