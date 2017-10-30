--24) top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
SELECT Track.Name, 
COUNT(InvoiceLine.InvoiceId) as 'Count' 
FROM InvoiceLine 
JOIN Track, Invoice 
WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId 
AND Invoice.InvoiceDate 
LIKE '2013%' 
AND InvoiceLine.TrackId = Track.TrackId  
GROUP BY Track.name 
ORDERBYby count DESC LIMIT 9;