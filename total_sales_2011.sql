SELECT ROUND(SUM(Total), 2) as '2011TotalSales'
FROM Invoice
WHERE InvoiceDate LIKE '2011%'; 