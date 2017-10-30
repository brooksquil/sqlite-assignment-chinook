--27) top_media_type.sql: Provide a query that shows the most purchased Media Type.
SELECT MediaType.Name 'Media Type', 
COUNT(MediaType.Name) as 'Count' 
FROM MediaType 
JOIN Track, InvoiceLine where InvoiceLine.TrackId = Track.TrackId 
AND Track.MediaTypeId = MediaType.MediaTypeId  
GROUP BY MediaType.Name 
ORDER BY count desc limit 1;