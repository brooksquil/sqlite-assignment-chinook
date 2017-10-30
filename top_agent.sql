--20) top_agent.sql: Which sales agent made the most in sales over all?
SELECT Employee.FirstName, Employee.LastName, 
ROUND(SUM(Invoice.Total), 2) as 'Total Sales' 
FROM Employee 
JOIN Customer, Invoice 
WHERE Customer.SupportRepId = Employee.EmployeeId  
AND Employee.Title = 'Sales Support Agent' 
AND Customer.CustomerId = Invoice.CustomerId 
GROUP BY Employee.FirstName 
ORDER BY 'Total Sales'  DESC LIMIT 1;