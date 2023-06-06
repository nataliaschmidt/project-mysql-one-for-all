SELECT 
    u.usuario_nome AS pessoa_usuaria,
    IF(MAX(YEAR(me.data_reproducao)) >= 2021,
        'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM
    usuarios u
        INNER JOIN
    musicas_escutadas me ON u.usuario_id = me.usuario_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome;