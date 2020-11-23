
SELECT 
    a.Name ArtistName,
    COUNT(il.InvoiceLineId) TimesPurchased
FROM Artist a
JOIN Album al ON al.ArtistId = a.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY ArtistName
ORDER BY TimesPurchased DESC
LIMIT 3;
    












