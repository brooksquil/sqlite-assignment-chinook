--15) playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
--subquery
SELECT Employee.FirstName 'Sales Rep First Name', Employee.LastName 'Sales Rep Last Name', Invoice.InvoiceId
FROM Employee, Invoice, Customer
WHERE Employee.Title = 'Sales Support Agent'
and Customer.SupportRepId = Employee.EmployeeId
and Customer.CustomerId = Invoice.customerId;

--JOIN
SELECT Employee.FirstName 'Sales Rep First Name', Employee.LastName 'Sales Rep Last Name', Invoice.InvoiceId
FROM Employee
JOIN Invoice on Customer.CustomerId = Invoice.customerId
JOIN Customer on Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent';