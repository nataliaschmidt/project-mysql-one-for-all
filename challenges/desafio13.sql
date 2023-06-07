SELECT 
    CASE
        WHEN u.usuario_idade <= 30 THEN 'Até 30 anos'
        WHEN u.usuario_idade >= 31 AND u.usuario_idade < 59 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.usuario_id) as total_pessoas_usuarias,
    COUNT(mf.usuario_id) AS total_favoritadas
FROM
    usuarios u
        LEFT JOIN
    musicas_favoritas mf ON mf.usuario_id = u.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
