SELECT 
    ar.artista_nome AS artista, al.album_nome AS album
FROM
    artistas ar
        INNER JOIN
    albuns al ON ar.artista_id = al.artista_id
WHERE
    ar.artista_nome = 'Elis Regina';