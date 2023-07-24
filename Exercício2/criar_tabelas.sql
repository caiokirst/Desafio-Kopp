-- Tabela para armazenar informações das remessas
CREATE TABLE remessa (
    id SERIAL PRIMARY KEY,
    situacao VARCHAR(20) NOT NULL CHECK (situacao IN ('Criada', 'Expedida', 'Aceita', 'Não Aceita'))
);

-- Tabela para armazenar informações das infrações
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