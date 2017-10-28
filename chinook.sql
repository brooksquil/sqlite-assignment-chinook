-- 1) non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country FROM Customer WHERE Country != "USA";

--2) brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT * FROM Customer WHERE Country = "Brazil" ;

--3) brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT cust.FirstName, cust.LastName, inv.InvoiceId, inv.BillingCountry, inv.InvoiceDate
FROM Invoice as inv LEFT JOIN Customer as cust on inv.CustomerId = cust.CustomerId WHERE inv.BillingCountry = "Brazil";

--4) sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
SELECT * FROM Employee WHERE Title = "Sales Support Agent" ;

--5) unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
SELECT DISTINCT BillingCountry FROM Invoice ;

--6) sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
    --use customerID in invoice and customer to get invoices
    --use SupportRepId in customer table to get employee names to match with invoices
    SELECT emp.LastName, emp.Firstname, 
       inv.InvoiceId
  FROM [Employee] emp 
  JOIN Customer cust ON cust.SupportRepId = emp.EmployeeId
  JOIN Invoice Inv ON Inv.CustomerId = cust.CustomerId;

--7) invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT emp.LastName, emp.Firstname, cust.FirstName, cust.LastName, cust.Country,
       inv.total
  FROM [Employee] emp 
  JOIN Customer cust ON cust.SupportRepId = emp.EmployeeId
  JOIN Invoice Inv ON Inv.CustomerId = cust.CustomerId;

--8) total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
    --InvoiceDate
--2009 # of Total Invoices
SELECT
COUNT(*)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31';
--2011 Total # of Invoices
SELECT
COUNT(*)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';

--9)  total_sales_{year}.sql: What are the respective total sales for each of those years?
--Total Sales 2009
SELECT
SUM(Total)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31';

--Total Sale 2011
SELECT
SUM(Total)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';

--10) invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT
COUNT(InvoiceId)
FROM
InvoiceLine
WHERE
InvoiceId = 37;

--11) line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
SELECT InvoiceId,
COUNT(InvoiceLineId)
FROM
InvoiceLine
GROUP BY InvoiceId;

--12) line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
 SELECT t.Name, i.InvoiceLineId
  FROM [InvoiceLine] i 
  JOIN Track t ON i.TrackId = t.TrackId;

--13) line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
 SELECT t.Name, t.Composer, i.InvoiceLineId
  FROM [InvoiceLine] i 
  JOIN Track t ON i.TrackId = t.TrackId;

--14) country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
 SELECT 
BillingCountry,
COUNT (InvoiceId)
From
Invoice
GROUP BY BillingCountry;

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

--16) tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT t.Name 'Track Name', a.Title 'Album Title', m.Name 'Media Type', g.Name 'Genre'
FROM Track t
JOIN Album a on a.AlbumId = t.AlbumId
JOIN MediaType m on m.MediaTypeId = t.MediaTypeId
JOIN Genre g on g.GenreId = t.GenreId;

--17) invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

--18) sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

--19) top_2009_agent.sql: Which sales agent made the most in sales in 2009?

--**Hint: Use the MAX function on a subquery.

--20) top_agent.sql: Which sales agent made the most in sales over all?

--21) sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

--22) sales_per_country.sql: Provide a query that shows the total sales per country.

--23) top_country.sql: Which country's customers spent the most?

--24) top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

--25) top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

--26) top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

--27) top_media_type.sql: Provide a query that shows the most purchased Media Type.