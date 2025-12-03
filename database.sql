-- Tabela para armazenar os sorteios
CREATE TABLE color_draws (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    person_name TEXT NOT NULL UNIQUE,
    color_name TEXT NOT NULL,
    color_hex TEXT NOT NULL,
    drawn_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ip_address TEXT
);

-- Índice para buscar por nome rapidamente
CREATE INDEX idx_person_name ON color_draws(person_name);

-- Índice para buscar por IP
CREATE INDEX idx_ip_address ON color_draws(ip_address);

-- Habilitar Row Level Security (RLS)
ALTER TABLE color_draws ENABLE ROW LEVEL SECURITY;

-- Política para permitir leitura pública
CREATE POLICY "Permitir leitura pública" ON color_draws
    FOR SELECT
    USING (true);

-- Política para permitir inserção pública
CREATE POLICY "Permitir inserção pública" ON color_draws
    FOR INSERT
    WITH CHECK (true);

-- Função para contar quantas vezes uma cor foi usada
CREATE OR REPLACE FUNCTION count_color_usage(color TEXT)
RETURNS INTEGER AS $$
BEGIN
    RETURN (SELECT COUNT(*) FROM color_draws WHERE color_name = color);
END;
$$ LANGUAGE plpgsql;
