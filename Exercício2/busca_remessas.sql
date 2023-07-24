SELECT
    r.id AS remessa_id,
    r.situacao,
    COUNT(i.id) AS total_infra��es,
    SUM(CASE WHEN i.valida THEN 1 ELSE 0 END) AS total_infra��es_v�lidas,
    SUM(CASE WHEN NOT i.valida THEN 1 ELSE 0 END) AS total_infra��es_inv�lidas
FROM remessa r
LEFT JOIN infracao i ON r.id = i.remessa_id
GROUP BY r.id, r.situacao
ORDER BY r.situacao;