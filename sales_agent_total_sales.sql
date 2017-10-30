--18) sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
SELECT Employee.FirstName, Employee.LastName,
ROUND(SUM(Invoice.Total), 2) as 'Total Sales' 
FROM Employee join Customer, Invoice 
WHERE Customer.SupportRepId = Employee.EmployeeId  
AND Employee.Title = 'Sales Support Agent' 
AND Customer.CustomerId = Invoice.CustomerId 
GROUP BY Employee.FirstName;