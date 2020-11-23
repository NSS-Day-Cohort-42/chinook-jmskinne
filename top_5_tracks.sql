SELECT 
    t.Name TrackName,
    COUNT(il.InvoiceLineId) TimesPurchased
FROM Track t 
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY TrackName
ORDER BY TimesPurchased DESC
LIMIT 6;









    














