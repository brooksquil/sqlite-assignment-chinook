--25) top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
SELECT Track.Name 'Track Name', 
COUNT(InvoiceLine.InvoiceId) 'Count' 
FROM InvoiceLine 
JOIN Track, Invoice 
WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId 
AND Invoice.InvoiceDate 
AND InvoiceLine.TrackId = Track.TrackId  
GROUP BY Track.name 
ORDER BY count DESC LIMIT 5;