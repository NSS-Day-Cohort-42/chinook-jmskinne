SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
From Invoice as inv
JOIN Customer as c ON c.CustomerId = inv.CustomerId 
AND c.Country = 'Brazil';