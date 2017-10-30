--26) top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
SELECT Artist.Name 'Artist', 
COUNT(InvoiceLine.InvoiceId) as 'Count' 
FROM InvoiceLine 
JOIN Track, Invoice, Album, Artist 
WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId  
AND InvoiceLine.TrackId = Track.TrackId 
AND Track.AlbumId = Album.AlbumId 
AND Album.ArtistId = Artist.ArtistId  
GROUP BY Artist.Name 
ORDER BY count desc limit 3;