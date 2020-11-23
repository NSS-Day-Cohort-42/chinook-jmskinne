SELECT *,
    (SELECT COUNT(*) 
    FROM InvoiceLine as il
    WHERE il.InvoiceId = inv.InvoiceId
    ) as TotalInvoiceLineItems
FROM Invoice as inv;