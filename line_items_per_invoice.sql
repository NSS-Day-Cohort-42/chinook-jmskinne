SELECT * FROM Invoice
SELECT InvoiceId, COUNT(*) as 'TransactionsOnInvoice'
FROM InvoiceLine
GROUP BY InvoiceId;