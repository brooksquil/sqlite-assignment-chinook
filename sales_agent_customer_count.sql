--21) sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
SELECT Employee.FirstName, Employee.LastName, 
COUNT (CustomerId) 
FROM Customer 
JOIN Employee 
WHERE Employee.EmployeeId = Customer.SupportRepId 
GROUP BY Employee.FirstName;