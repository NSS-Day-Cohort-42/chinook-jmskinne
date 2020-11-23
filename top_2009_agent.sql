SELECT
    MAX(AgentSales) as TopAgentSales,
    TopAgent2009
FROM
    (
        SELECT 
            emp.FirstName TopAgent2009,
            ROUND(SUM(inv.Total), 2) AgentSales
        FROM Employee emp
        JOIN Customer c ON c.SupportRepId = emp.EmployeeId
        JOIN Invoice inv ON inv.CustomerId = c.CustomerId
        WHERE inv.InvoiceDate LIKE '2009%'
        GROUP BY TopAgent2009
    );




