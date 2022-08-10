--19) top_2009_agent.sql: Which sales agent made the most in sales in 2009?
SELECT Employee.FirstName, Employee.LastName,
ROUND(SUM(Invoice.Total), 2) as 'Total Sales' 
FROM Employee 
JOIN Customer, Invoice
WHERE Customer.SupportRepId = Employee.EmployeeId  
AND Employee.Title = 'Sales Support Agent' 
AND Customer.CustomerId = Invoice.CustomerId 
AND Invoice.InvoiceDate 
LIKE '2009%' 
GROUP BY Employee.EmployeeId
ORDER BY (round(sum(Invoice.Total), 2))  DESC LIMIT 1;