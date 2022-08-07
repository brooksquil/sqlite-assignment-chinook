--13) line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT  t.Name, ar.Name, i.InvoiceId
FROM InvoiceLine i
         JOIN Track t on i.TrackId = t.TrackId
         JOIN Album a on T.AlbumId = a.AlbumId
         JOIN Artist ar on a.ArtistId = ar.ArtistId
;