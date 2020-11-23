SELECT t.Name as TrackName, t.Composer as Artist, inv.InvoiceLineId
FROM Track as t
Join InvoiceLine as inv ON inv.TrackId = t.TrackId
ORDER BY InvoiceLineId ASC;