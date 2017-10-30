--23) top_country.sql: Which country's customers spent the most?
SELECT Customer.Country, 
ROUND(SUM(Invoice.Total), 2) as 'Total Sales' 
FROM Invoice 
JOIN Customer 
WHERE Customer.Country = Invoice.BillingCountry 
GROUP BY Customer.Country
ORDER BY ROUND(SUM(Invoice.Total), 2) DESC LIMIT 1;