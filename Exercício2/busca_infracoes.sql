SELECT
    numero,
    data,
    hora,
    equipamento,
    velocidade_permitida,
    velocidade_medida,
    valida
FROM infracao
WHERE velocidade_medida >= (velocidade_permitida * 1.2) -- Velocidade medida igual ou acima de 20% da permitida
ORDER BY data, hora;