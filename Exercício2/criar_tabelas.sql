-- Tabela para armazenar informa��es das remessas
CREATE TABLE remessa (
    id SERIAL PRIMARY KEY,
    situacao VARCHAR(20) NOT NULL CHECK (situacao IN ('Criada', 'Expedida', 'Aceita', 'N�o Aceita'))
);

-- Tabela para armazenar informa��es das infra��es
CREATE TABLE infracao (
    id SERIAL PRIMARY KEY,
    numero INTEGER NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    equipamento VARCHAR(100) NOT NULL,
    velocidade_permitida INTEGER NOT NULL,
    velocidade_medida INTEGER NOT NULL,
    valida BOOLEAN NOT NULL,
    remessa_id INTEGER REFERENCES remessa (id) ON DELETE CASCADE
);