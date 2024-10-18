INSERT INTO equipos (nombre, puntos) VALUES 
('Equipo A', 0),
('Equipo B', 0),
('Equipo C', 0),
('Equipo D', 0);

INSERT INTO grupos (nombre, idEquipo) VALUES 
('Grupo 1', 1),  -- Equipo A
('Grupo 1', 2),  -- Equipo B
('Grupo 2', 3),  -- Equipo C
('Grupo 2', 4);  -- Equipo D

INSERT INTO partidos (idEquipo1, idEquipo2, p1, p2, f1, f2) VALUES 
(1, 2, 2, 1, 3, 1),  -- Partido 1: Equipo A vs Equipo B
(3, 4, 3, 0, 2, 0),  -- Partido 2: Equipo C vs Equipo D
(1, 3, 1, 2, 2, 1);  -- Partido 3: Equipo A vs Equipo C

INSERT INTO sets (idPartido, equipo1, equipo2, numero) VALUES 
(1, 1, 2, 1),  -- Set 1: Partido 1
(1, 1, 2, 2),  -- Set 2: Partido 1
(2, 3, 4, 1),  -- Set 1: Partido 2
(2, 3, 4, 2),  -- Set 2: Partido 2
(3, 1, 3, 1),  -- Set 1: Partido 3
(3, 1, 3, 2);  -- Set 2: Partido 3

-- Resumen de los Datos
-- Partido 1: Equipo A vs Equipo B
-- Puntos: 2 - 1
-- F1: 3, F2: 1
-- Partido 2: Equipo C vs Equipo D
-- Puntos: 3 - 0
-- F1: 2, F2: 0
-- Partido 3: Equipo A vs Equipo C
-- Puntos: 1 - 2
-- F1: 2, F2: 1 