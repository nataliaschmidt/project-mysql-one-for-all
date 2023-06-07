SELECT 
    art.artista_nome AS artista,
    CASE
        WHEN COUNT(mf.cancao_id) >= 5 THEN 'A'
        WHEN COUNT(mf.cancao_id) >= 3 AND COUNT(mf.cancao_id) <= 4 THEN 'B'
        WHEN COUNT(mf.cancao_id) >= 1 AND COUNT(mf.cancao_id) <= 2 THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    artistas art
    INNER JOIN albuns alb ON art.artista_id = alb.artista_id
    INNER JOIN cancoes c ON alb.album_id = c.album_id
    LEFT JOIN musicas_favoritas mf ON c.cancao_id = mf.cancao_id
GROUP BY art.artista_nome
ORDER BY COUNT(mf.cancao_id) DESC, art.artista_nome;