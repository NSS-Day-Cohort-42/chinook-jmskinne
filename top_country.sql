
SELECT 
    TopPurchaserCountry,
    MAX(TotalPurchased) as TotalSales
FROM 
    (
        SELECT 
        c.Country TopPurchaserCountry,
        ROUND(SUM(inv.Total),2) TotalPurchased
        
    FROM Customer c 
    JOIN Invoice inv ON inv.CustomerId = c.CustomerId
    GROUP BY c.Country
    );














