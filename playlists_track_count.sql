SELECT 
    p.PlayListId,
    p.Name as PlayListName,
    COUNT(pt.TrackId) as TracksOnPlayList

FROM Playlist as p
LEFT JOIN PlaylistTrack as pt
ON p.PlayListId = pt.PlayListId
GROUP BY p.PlayListId;







