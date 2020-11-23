SELECT ROUND(SUM(Total), 2) as '2009TotalSales'
FROM Invoice
WHERE InvoiceDate LIKE '2009%'; 