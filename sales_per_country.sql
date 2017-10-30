--22) sales_per_country.sql: Provide a query that shows the total sales per country.
SELECT Customer.Country, 
ROUND(SUM(Invoice.Total), 2) as 'Total Sales' 
FROM Invoice 
JOIN Customer 
WHERE Customer.Country = Invoice.BillingCountry 
GROUP BY Customer.Country;