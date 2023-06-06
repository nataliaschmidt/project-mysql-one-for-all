SELECT 
    u.usuario_nome AS pessoa_usuaria,
    COUNT(me.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM
    usuarios u
        INNER JOIN
    musicas_escutadas me ON u.usuario_id = me.usuario_id
        INNER JOIN
    cancoes c ON me.cancao_id = c.cancao_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome;