--6) sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
    --use customerID in invoice and customer to get invoices
    --use SupportRepId in customer table to get employee names to match with invoices
    SELECT emp.LastName, emp.Firstname, 
       inv.InvoiceId
  FROM [Employee] emp 
  JOIN Customer cust ON cust.SupportRepId = emp.EmployeeId
  JOIN Invoice Inv ON Inv.CustomerId = cust.CustomerId;