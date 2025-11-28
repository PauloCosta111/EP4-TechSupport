
-- 1. Listar todos os clientes
SELECT * FROM Cliente;

-- 2. Consultar chamados abertos
SELECT ID_Chamado, Descricao_Problema FROM Chamado WHERE Data_Fechamento IS NULL;

-- 3. Consultar chamados com JOIN (Cliente + Analista)
SELECT c.Nome AS Cliente, a.Nome AS Analista, ch.Descricao_Problema
FROM Chamado ch
JOIN Cliente c ON ch.ID_Cliente = c.ID_Cliente
JOIN Analista a ON ch.ID_Analista = a.ID_Analista;

-- 4. Consultar equipamentos ordenados por modelo
SELECT * FROM Equipamento ORDER BY Modelo;

-- 5. Consultar as 2 primeiras intervenções
SELECT * FROM Intervencao LIMIT 2;
