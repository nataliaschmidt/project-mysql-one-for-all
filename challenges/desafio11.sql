SELECT 
    alb.album_nome AS album, COUNT(mf.cancao_id) AS favoritadas
FROM
    musicas_favoritas mf
        INNER JOIN
    cancoes c ON mf.cancao_id = c.cancao_id
        INNER JOIN
    albuns alb ON alb.album_id = c.album_id
GROUP BY alb.album_id
ORDER BY favoritadas DESC , alb.album_nome
LIMIT 3;