SELECT 
    mt.Name MediaTypeName,
    COUNT(il.InvoiceLineId) TimesPurchased
FROM MediaType mt 

JOIN Track t ON t.MediaTypeId = mt.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY MediaTypeName
ORDER BY TimesPurchased DESC;
