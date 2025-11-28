
INSERT INTO Cliente VALUES (1,'Paulo Costa','paulo@email.com','11999999999');
INSERT INTO Cliente VALUES (2,'Maria Silva','maria@email.com','11988888888');

INSERT INTO Equipamento VALUES (1,'Notebook','Dell Inspiron','ABC123');
INSERT INTO Equipamento VALUES (2,'Impressora','HP LaserJet','XYZ789');

INSERT INTO Analista VALUES (1,'João Santos','Hardware');
INSERT INTO Analista VALUES (2,'Ana Lima','Software');

INSERT INTO Tipo_Problema VALUES (1,'Falha no Sistema');
INSERT INTO Tipo_Problema VALUES (2,'Problema de Impressão');

INSERT INTO Solucao VALUES (1,1,'Reinstalação do sistema operacional');
INSERT INTO Solucao VALUES (2,2,'Troca do cartucho');

INSERT INTO Status VALUES (1,'Aberto');
INSERT INTO Status VALUES (2,'Concluído');

INSERT INTO Chamado VALUES (1,'2025-11-01',NULL,'Sistema não inicia',1,1,1,1,1);
INSERT INTO Chamado VALUES (2,'2025-11-05','2025-11-06','Impressora não imprime',2,2,2,2,2);

INSERT INTO Intervencao VALUES (1,1,'Verificação do HD','2025-11-02');
INSERT INTO Intervencao VALUES (2,2,'Troca do cartucho','2025-11-06');
