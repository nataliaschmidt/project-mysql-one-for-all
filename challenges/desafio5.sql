SELECT 
    c.nome_cancao AS cancao, COUNT(me.cancao_id) AS reproducoes
FROM
    cancoes c
        INNER JOIN
    musicas_escutadas me ON c.cancao_id = me.cancao_id
GROUP BY c.cancao_id
ORDER BY reproducoes DESC , c.nome_cancao
LIMIT 2;