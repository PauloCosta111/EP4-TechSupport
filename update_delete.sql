
-- UPDATE
UPDATE Chamado SET Data_Fechamento = '2025-11-10', ID_Status = 2 WHERE ID_Chamado = 1;
UPDATE Cliente SET Telefone = '11977777777' WHERE ID_Cliente = 1;
UPDATE Equipamento SET Modelo = 'Dell XPS' WHERE ID_Equipamento = 1;

-- DELETE
DELETE FROM Intervencao WHERE ID_Intervencao = 2;
DELETE FROM Chamado WHERE ID_Chamado = 2;
DELETE FROM Cliente WHERE ID_Cliente = 2;
