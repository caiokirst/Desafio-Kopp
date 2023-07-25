SELECT
    i.remessa_id,
    i.numero,
    i.data,
    i.hora,
    i.equipamento,
    i.velocidade_permitida,
    i.velocidade_medida,
    i.valida
FROM infracao i 
WHERE velocidade_medida >= (velocidade_permitida * 1.2) -- Velocidade medida igual ou acima de 20% da permitida
ORDER BY data, hora;
