--7) invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT emp.LastName, emp.Firstname, cust.FirstName, cust.LastName, cust.Country,
       inv.total
  FROM [Employee] emp 
  JOIN Customer cust ON cust.SupportRepId = emp.EmployeeId
  JOIN Invoice Inv ON Inv.CustomerId = cust.CustomerId;