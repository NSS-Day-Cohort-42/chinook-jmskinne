SELECT 
    t.Name TrackName,
    t.TrackId,
    COUNT(il.InvoiceLineId) TimesPurchased2013
FROM Track t 
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY TrackName
ORDER BY TimesPurchased2013 DESC
LIMIT 9;



