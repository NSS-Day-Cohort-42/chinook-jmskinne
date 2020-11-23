SELECT BillingCountry, COUNT(*) as 'TotalInvoicesPerCounty'
FROM Invoice
GROUP BY BillingCountry;