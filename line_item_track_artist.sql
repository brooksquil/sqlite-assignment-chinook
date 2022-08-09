--13) line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name, ar.Name, i.InvoiceId
FROM InvoiceLine i
         JOIN Track t on i.TrackId = t.TrackId
         JOIN Album a on T.AlbumId = a.AlbumId
         JOIN Artist ar on a.ArtistId = ar.ArtistId
;
-- - sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
-- fallo en repo orginal, agrupa por nombre de Empoyee
select E.EmployeeId, E.FirstName, E.LastName, sum(I.Total)
from Employee E
         inner join Customer C on E.EmployeeId = C.SupportRepId
         inner join Invoice I on C.CustomerId = I.CustomerId
group by EmployeeId;


-- - top_2009_agent.sql: Which sales agent made the most in sales in 2009?

Select E.EmployeeId, sum(I.Total)
from Employee E
         inner join Customer C on E.EmployeeId = C.SupportRepId
         inner join Invoice I on C.CustomerId = I.CustomerId
where I.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
group by E.EmployeeId
order by sum(I.Total) desc
limit 1
;

-- - Hint: Use the MAX function on a subquery.
-- top_agent.sql: Which sales agent made the most in sales over all?

select E.EmployeeId, sum(I.Total)
from Employee E
         inner join Customer C on E.EmployeeId = C.SupportRepId
         inner join Invoice I on C.CustomerId = I.CustomerId
    Where e.Title = 'Sales Support Agent'
group by E.EmployeeId
order by sum(I.Total) desc
limit 1
