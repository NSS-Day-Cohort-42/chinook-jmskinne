SELECT 
    c.Country CustomerCountry,
    ROUND(SUM(inv.Total),2) TotalPurchased
    
FROM Customer c 
JOIN Invoice inv ON inv.CustomerId = c.CustomerId
GROUP BY CustomerCountry;




