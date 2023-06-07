SELECT 
    ar.artista_nome AS artista,
    al.album_nome AS album,
    COUNT(ars.usuario_id) AS pessoas_seguidoras
FROM
    artistas ar
        INNER JOIN
    albuns al ON ar.artista_id = al.artista_id
        INNER JOIN
    artista_seguidores ars ON ars.artista_id = ar.artista_id
GROUP BY ar.artista_nome , al.album_nome
ORDER BY pessoas_seguidoras DESC , artista , album;