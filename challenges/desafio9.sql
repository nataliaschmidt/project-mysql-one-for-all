SELECT 
    COUNT(*) AS musicas_no_historico
FROM
    usuarios u
        INNER JOIN
    musicas_escutadas me ON u.usuario_id = me.usuario_id
WHERE
    u.usuario_nome = 'Barbara Liskov';