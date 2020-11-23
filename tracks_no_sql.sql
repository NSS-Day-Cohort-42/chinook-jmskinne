SELECT
    t.Name as TrackName,
    a.Title as AlbumName,
    m.Name as MediaType,
    g.Name as Genre
FROM Track as t
Join Album as a ON a.AlbumId = t.AlbumId
Join Genre as g ON g.GenreId = t.GenreId
Join MediaType as m ON m.MediaTypeId = t.MediaTypeId;