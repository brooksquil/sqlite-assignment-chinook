--16) tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT t.Name 'Track Name', a.Title 'Album Title', m.Name 'Media Type', g.Name 'Genre'
FROM Track t
JOIN Album a on a.AlbumId = t.AlbumId
JOIN MediaType m on m.MediaTypeId = t.MediaTypeId
JOIN Genre g on g.GenreId = t.GenreId;