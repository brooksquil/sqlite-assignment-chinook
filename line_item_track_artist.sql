--13) line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
 SELECT t.Name, t.Composer, i.InvoiceLineId
  FROM [InvoiceLine] i 
  JOIN Track t ON i.TrackId = t.TrackId;