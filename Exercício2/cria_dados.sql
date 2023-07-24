-- Inserir exemplo de remessa 1
INSERT INTO remessa (situacao) VALUES ('Criada') RETURNING id;
-- Suponha que o ID retornado seja 1

INSERT INTO infracao (numero, data, hora, equipamento, velocidade_permitida, velocidade_medida, valida, remessa_id)
VALUES 
    (116, '2023-07-24', '12:30:00', 'Radar 1', 60, 80, TRUE, 1),
    (119, '2023-07-25', '15:45:00', 'Radar 2', 50, 70, FALSE, 1),
    (2232, '2023-07-26', '09:00:00', 'Radar 3', 70, 90, TRUE, 1);

-- Inserir exemplo de remessa 2
INSERT INTO remessa (situacao) VALUES ('Expedida') RETURNING id;
-- Suponha que o ID retornado seja 2

INSERT INTO infracao (numero, data, hora, equipamento, velocidade_permitida, velocidade_medida, valida, remessa_id)
VALUES 
    (104, '2023-07-27', '14:00:00', 'Radar 4', 60, 70, TRUE, 2),
    (105, '2023-07-28', '16:30:00', 'Radar 5', 50, 60, TRUE, 2);

-- Inserir exemplo de remessa 3
INSERT INTO remessa (situacao) VALUES ('Aceita') RETURNING id;
-- Suponha que o ID retornado seja 3

INSERT INTO infracao (numero, data, hora, equipamento, velocidade_permitida, velocidade_medida, valida, remessa_id)
VALUES 
    (106, '2023-07-29', '08:45:00', 'Radar 6', 70, 100, FALSE, 3);

-- Inserir exemplo de remessa 4
INSERT INTO remessa (situacao) VALUES ('Criada') RETURNING id;
-- Suponha que o ID retornado seja 4

INSERT INTO infracao (numero, data, hora, equipamento, velocidade_permitida, velocidade_medida, valida, remessa_id)
VALUES 
    (107, '2023-07-30', '11:15:00', 'Radar 7', 60, 80, TRUE, 4),
    (108, '2023-07-31', '13:45:00', 'Radar 8', 50, 60, FALSE, 4),
    (109, '2023-08-01', '10:30:00', 'Radar 9', 70, 90, TRUE, 4);

-- Inserir exemplo de remessa 5
INSERT INTO remessa (situacao) VALUES ('Expedida') RETURNING id;
-- Suponha que o ID retornado seja 5

INSERT INTO infracao (numero, data, hora, equipamento, velocidade_permitida, velocidade_medida, valida, remessa_id)
VALUES 
    (110, '2023-08-02', '14:30:00', 'Radar 10', 80, 100, TRUE, 5);
