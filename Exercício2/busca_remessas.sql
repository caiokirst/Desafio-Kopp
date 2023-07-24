SELECT
    r.id AS remessa_id,
    r.situacao,
    COUNT(i.id) AS total_infrações,
    SUM(CASE WHEN i.valida THEN 1 ELSE 0 END) AS total_infrações_válidas,
    SUM(CASE WHEN NOT i.valida THEN 1 ELSE 0 END) AS total_infrações_inválidas
FROM remessa r
LEFT JOIN infracao i ON r.id = i.remessa_id
GROUP BY r.id, r.situacao
ORDER BY r.situacao;