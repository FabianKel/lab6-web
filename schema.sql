CREATE TABLE IF NOT EXISTS  user (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password CHAR(64) NOT NULL,
    email VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP   
);

CREATE TABLE IF NOT EXISTS blog_posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    imagen_data1 TEXT,
    imagen_data2 TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    partido_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS partidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha VARCHAR(255) NOT NULL,
    competencia_id INT NOT NULL,
    jornada VARCHAR(255) NOT NULL,
    local_id INT NOT NULL,
    visit_id INT NOT NULL,
    marcador_local INT,
    marcador_visit INT
);

CREATE TABLE IF NOT EXISTS acciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    partido_id INT,
    equipo_id INT,
    accion VARCHAR(255) NOT NULL,
    minuto TEXT,
    autor VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    logoIMG VARCHAR(255) NOT NULL,
    NombreEstadio VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS competencias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competencia VARCHAR(255) NOT NULL,
    logoIMG VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL
);



INSERT INTO equipos (nombre, logoIMG, NombreEstadio, pais) VALUES
('Athletic Club', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/237.png', 'San Mamés', 'España'),
('Osasuna', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/246.png', 'El Sadar', 'España'),
('Atlético de Madrid', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/236.png', 'Wanda Metropolitano', 'España'),
('Cádiz', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/7376.png', 'Ramón de Carranza', 'España'),
('Alavés', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/1437.png', 'Mendizorroza', 'España'),
('FC Barcelona', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/238.png', 'Estadio Olímpic Lluís Companys', 'España'),
('Getafe', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/241.png', 'Coliseum Alfonso Pérez', 'España'),
('Girona', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/801.png', 'Montilivi', 'España'),
('Granada', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/242.png', 'Los Cármenes', 'España'),
('Rayo Vallecano', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/248.png', 'Campo de Fútbol de Vallecas', 'España'),
('Real Betis', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/239.png', 'Benito Villamarín', 'España'),
('Celta de Vigo', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/795.png', 'Balaídos', 'España'),
('Mallorca', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/245.png', 'Iberostar Estadi', 'España'),
('Real Madrid', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/249.png', 'Santiago Bernabéu', 'España'),
('Real Sociedad', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/250.png', 'Anoeta', 'España'),
('Sevilla', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/251.png', 'Ramón Sánchez-Pizjuán', 'España'),
('Almería', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/793.png', 'Juegos del Mediterráneo', 'España'),
('Las Palmas', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/805.png', 'Gran Canaria', 'España'),
('Valencia', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/253.png', 'Mestalla', 'España'),
('Villarreal', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/254.png', 'Estadio de la Cerámica', 'España'),
('FC Oporto', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/5933.png', 'Do Dragão', 'Portugal'),
('FK Shajtar Donetsk', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/5936.png', 'Olímpico de Kiev', 'Ucrania'),
('Royal Antwerp Football Club', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/75150.png', 'Bosuilstadion', 'Bélgica'),
('S. S. C. Napoli', 'https://static.vocento.com/sportsdata/latest/assets/equipos/g/2703.png', 'Diego Armando Maradona', 'Italia'),
('París Saint-Germain', 'https://static.vocento.com/sportsdata/latest/assets/equipos/m/4260.png', 'Parque De Los Príncipes', 'Francia'),
('Club América', 'https://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500/227.png&h=200&w=200', 'Estadio Azteca', 'México'),
('Unión Deportiva Barbastro', 'https://secure.espncdn.com/combiner/i?img=/i/teamlogos/default-team-logo-500.png&h=72&w=72', 'Municipal de Deportes de Barbastro', 'España'),
('Unionistas de Salamanca', 'https://secure.espncdn.com/combiner/i?img=/i/teamlogos/default-team-logo-500.png&h=72&w=72', 'Estadio Municipal Reina Sofía', 'España');

INSERT INTO competencias (competencia, logoIMG, region) VALUES
('La Liga', 'https://a.espncdn.com/combiner/i?img=/i/leaguelogos/soccer/500/15.png&w=80&h=80&cquality=40&scale=crop', 'España'),
('Supercopa', 'https://a.espncdn.com/combiner/i?img=/i/leaguelogos/soccer/500/431.png&w=80&h=80&cquality=40&scale=crop', 'España'),
('Copa del Rey', 'https://a.espncdn.com/combiner/i?img=/i/leaguelogos/soccer/500/80.png&&w=80&h=80&cquality=40&scale=crop', 'España'),
('UEFA Champions League', 'https://a.espncdn.com/combiner/i?img=/i/leaguelogos/soccer/500/2.png&w=80&h=80&cquality=40&scale=crop', 'Europa'),
('Amistoso', 'https://secure.espncdn.com/combiner/i?img=/i/teamlogos/default-team-logo-500.png&h=40&w=40', 'Mundo');

INSERT INTO partidos (competencia_id, jornada, Fecha, local_id, visit_id, marcador_local, marcador_visit) VALUES
(1, 'Jornada 1', '2023-08-13', 7, 6, 0, 0),
(1, 'Jornada 2', '2023-08-20', 6, 4, 2, 0),
(1, 'Jornada 3', '2023-08-27', 20, 6, 3, 4),
(1, 'Jornada 4', '2023-09-03', 2, 6, 1, 2),
(1, 'Jornada 5', '2023-09-16', 6, 11, 5, 0),
(1, 'Jornada 6', '2023-09-23', 6, 12, 3, 2),
(1, 'Jornada 7', '2023-09-26', 6, 13, 2, 2),
(1, 'Jornada 8', '2023-09-29', 6, 16, 1, 0),
(1, 'Jornada 9', '2023-10-08', 6, 9, 2, 2),
(1, 'Jornada 10', '2023-10-22', 1, 6, 0, 1),
(1, 'Jornada 11', '2023-10-28', 6, 14, 1, 2),
(1, 'Jornada 12', '2023-11-04', 6, 15, 1, 0),
(1, 'Jornada 13', '2023-11-12', 6, 5, 2, 1),
(1, 'Jornada 14', '2023-11-25', 6, 10, 1, 1),
(1, 'Jornada 15', '2023-12-03', 6, 3, 1, 0),
(1, 'Jornada 16', '2023-12-10', 6, 8, 2, 4),
(1, 'Jornada 17', '2023-12-16', 6, 19, 1, 1),
(1, 'Jornada 18', '2023-12-20', 6, 17, 3, 2),
(1, 'Jornada 19', '2024-01-04', 18, 6, 1, 2),
(1, 'Jornada 20', '2024-01-21', 11, 6, 2, 4),
(1, 'Jornada 21', '2024-01-27', 20, 6, 5, 3),
(1, 'Jornada 22', '2024-01-31', 2, 6, 0, 1),
(1, 'Jornada 23', '2024-02-03', 5, 6, 1, 3),
(1, 'Jornada 24', '2024-02-11', 9, 6, 3, 3),
(1, 'Jornada 25', '2024-02-17', 12, 6, 1, 2),
(1, 'Jornada 26', '2024-02-24', 6, 7, 4, 0),
(1, 'Jornada 27', '2024-03-03', 1, 6, 0, 0),
(1, 'Jornada 28', '2024-03-08', 6, 13, 1, 0),
(1, 'Jornada 29', '2024-03-17', 3, 6, 0, 3),
(1, 'Jornada 30', '2024-03-30', 6, 18, 1, 0),
(1, 'Jornada 31', '2024-04-13', 4, 6, 0, 1),
(1, 'Jornada 32', '2024-04-21', 14, 6, 3, 2),
(1, 'Jornada 33', '2024-04-28', 6, 19, 4, 2),
(1, 'Jornada 34', '2024-05-05', 8, 6, 4, 2),
(1, 'Jornada 35', '2024-05-12', 6, 15, NULL, NULL),
(1, 'Jornada 36', '2024-05-15', 17, 6, NULL, NULL),
(1, 'Jornada 37', '2024-05-19', 6, 10, NULL, NULL),
(1, 'Jornada 38', '2024-05-26', 16, 6, NULL, NULL),
(4, 'Fase de Grupos - Jornada 1', '2023-09-19', 6, 23, 5, 0),
(4, 'Fase de Grupos - Jornada 2', '2023-10-04', 21, 6, 0, 1),
(4, 'Fase de Grupos - Jornada 3', '2023-10-25', 6, 22, 2, 1),
(4, 'Fase de Grupos - Jornada 4', '2023-10-23', 22, 6, 1, 0),
(4, 'Fase de Grupos - Jornada 5', '2023-11-28', 6, 21, 2, 1),
(4, 'Fase de Grupos - Jornada 6', '2023-12-13', 23, 6, 3, 2),
(4, 'Octavos de Final - Ida', '2024-02-21', 6, 24, 1, 1),
(4, 'Octavos de Final - Vuelta', '2025-12-13', 24, 6, 3, 2),
(4, 'Cuartos de Final - Ida', '2024-04-10', 25, 6, 2, 3),
(4, 'Cuartos de Final - Vuelta', '2023-04-16', 6, 25, 1, 4),
(2, 'Semifinal', '2024-01-11', 2, 6, 0, 2),
(2, 'Final', '2024-01-14', 6, 14, 1, 4),
(3, 'Dieciseisavos de Final', '2024-01-07', 27, 6, 2, 3),
(3, 'Octavos de Final', '2024-01-18', 28, 6, 1, 3),
(3, 'Cuartos de Final', '2024-01-24', 1, 6, 4, 2),
(5, 'Amistoso', '2023-12-21', 26, 6, 3, 2);

INSERT INTO acciones (partido_id, equipo_id, accion, minuto, autor)
VALUES
(2, 6, 'gol', '82', 'Pedri'),
(2, 6, 'gol', '90+4', 'Ferran Torres'),
(3, 6, 'gol', '12', 'Gavi'),
(3, 6, 'gol', '15', 'Frenkie de Jong'),
(3, 10, 'gol', '26', 'Juan Foyth'),
(3, 10, 'gol', '40', 'Alexander Sørloth'),
(3, 10, 'gol', '50', 'Álex Baena'),
(3, 6, 'gol', '68', 'Ferran Torres'),
(3, 6, 'gol', '71', 'Robert Lewandowski'),
(4, 6, 'gol - Cabeza', '45+1', 'Jules Koundé'),
(4, 2, 'gol', '76', 'Chimy Ávila'),
(4, 6, 'gol - Penalty', '86', 'Robert Lewansowski'),
(5, 6, 'gol', '25', 'João Félix'),
(5, 6, 'gol', '32', 'Robert Lewandowski'),
(5, 6, 'gol - Tiro Libre', '62', 'Ferran Torres'),
(5, 6, 'gol', '66', 'Raphinha'),
(5, 6, 'gol', '81', 'João Cancelo'),
(39, 6, 'gol', '11', 'João Félix'),
(39, 6, 'gol', '19', 'Robert Lewandowski'),
(39, 6, 'gol - en contra', '22', 'Jelle Bataille'),
(39, 6, 'gol', '54', 'Gavi'),
(39, 6, 'gol - Cabeza', '66', 'João Félix'),
(6, 11, 'gol', '19', 'Jørgen Strand Larsen'),
(6, 11, 'gol', '76', 'Anastasios Douvikas'),
(6, 6, 'gol - volea', '81', 'Robert Lewandowski'),
(6, 6, 'gol', '85', 'Robert Lewandowski'),
(6, 6, 'gol - volea', '89', 'João Félix'),
(7, 12, 'gol', '8', 'Vedat Muriqi'),
(7, 6, 'gol', '41', 'Raphinha'),
(7, 12, 'gol', '45 + 3', 'Abdón Prats'),
(7, 6, 'gol', '75', 'Fermín López'),
(8, 6, 'gol - en contra', '76', 'Sergio Ramos'),
(40, 6, 'gol', '45+1', 'Ferran Torres'),
(9, 9, 'gol', '1', 'Bryan Zaragoza'),
(9, 9, 'gol', '29', 'Bryan Zaragoza'),
(9, 6, 'gol', '45+1', 'Lamine Yamal'),
(9, 6, 'gol', '85', 'Sergi Roberto'),
(10, 6, 'gol', '80', 'Marc Guiu'),
(41, 6, 'gol', '28', 'Ferran Torres'),
(41, 6, 'gol - volea', '36', 'Fermín López'),
(41, 22, 'gol', '62', 'Heorhii Sudakov'),
(11, 6, 'gol', '6', 'Ilkay Gündogan'),
(11, 14, 'gol', '68', 'Jude Bellingham'),
(11, 14, 'gol - volea', '90+2', 'Jude Bellingham'),
(12, 6, 'gol - cabeza', '90+2', 'Ronald Araújo'),
(42, 22, 'gol', '40', 'Danylo Sikan'),
(13, 15, 'gol', '1', 'Samu'),
(13, 6, 'gol - cabeza', '53', 'Robert Lewandowski'),
(13, 6, 'gol - Penalty', '78', 'Robert Lewandowski'),
(14, 23, 'gol', '39', 'Unai López'),
(14, 6, 'gol - en contra', '82', 'Florian Lejeune'),
(43, 21, 'gol', '30', 'Pepê'),
(43, 6, 'gol', '32', 'João Cancelo'),
(43, 6, 'gol', '57', 'João Félix'),
(15, 6, 'gol', '28', 'João Félix'),
(16, 8, 'gol', '12', 'Artem Dovbyk'),
(16, 6, 'gol - cabeza', '19', 'Robert Lewandowski'),
(16, 8, 'gol', '40', 'Miguel Gutiérrez'),
(16, 8, 'gol', '80', 'Valery Fernández'),
(16, 6, 'gol', '90+2', 'Ilkay Gündogan'),
(16, 8, 'gol - volea', '90+5', 'Cristhian Stuani'),
(44, 23, 'gol', '2', 'Arthur Vermeeren'),
(44, 6, 'gol', '35', 'Ferran Torres'),
(44, 23, 'gol', '56', 'Vincent Janssen'),
(44, 6, 'gol - cabeza', '90+1', 'Marc Guiu'),
(44, 23, 'gol', '90+2', 'George Ilenikhena'),
(17, 6, 'gol', '55', 'João Félix'),
(17, 18, 'gol', '70', 'Hugo Guillamón'),
(18, 6, 'gol', '33', 'Raphinha'),
(18, 15, 'gol', '41', 'Léo Baptistão'),
(18, 6, 'gol - cabeza', '60', 'Sergi Roberto'),
(18, 15, 'gol', '71', 'Edgar González'),
(18, 6, 'gol', '83', 'Sergi Roberto'),
(54, 6, 'gol', '6', 'Lamine Yamal'),
(54, 26, 'gol', '12', 'Julián Quiñones'),
(54, 6, 'gol', '28', 'Marc Guiu'),
(54, 26, 'gol', '50', 'Julián Quiñones'),
(54, 26, 'gol - cabeza', '82', 'Henry Martín'),
(19, 17, 'gol', '12', 'Munir El Haddadi'),
(19, 6, 'gol', '55', 'Ferran Torres'),
(19, 6, 'gol - Penalty', '90+3', 'Ilkay Gündogan'),
(51, 6, 'gol', '18', 'Fermín López'),
(51, 6, 'gol', '51', 'Raphinha'),
(51, 27, 'gol', '60', 'Adriá De Mesa Garrido'),
(51, 6, 'gol - Penalty', '88', 'Robert Lewandowski'),
(51, 27, 'gol - Penalty', '90+3', 'Marc Prat'),
(49, 6, 'gol', '59', 'Robert Lewandowski'),
(49, 6, 'gol', '90+3', 'Lamine Yamal'),
(50, 14, 'gol', '7', 'Vinícius Júnior'),
(50, 14, 'gol', '10', 'Vinícius Júnior'),
(50, 6, 'gol - volea', '33', 'Robert Lewandowski'),
(50, 14, 'gol - Penalty', '39', 'Vinícius Júnior'),
(50, 14, 'gol', '64', 'Rodrygo'),
(52, 28, 'gol - volea', '31', 'Álvaro Gómez'),
(52, 6, 'gol', '45', 'Ferran Torres'),
(52, 6, 'gol', '69', 'Jules Koundé'),
(52, 6, 'gol', '73', 'Alejandro Balde'),
(20, 6, 'gol', '21', 'Ferran Torres'),
(20, 6, 'gol', '48', 'Ferran Torres'),
(20, 10, 'gol - volea', '56', 'Isco'),
(20, 10, 'gol - volea', '59', 'Isco'),
(20, 6, 'gol', '90', 'João Félix'),
(20, 6, 'gol', '90+2', 'Ferran Torres'),
(53, 1, 'gol', '1', 'Gorka Guruzeta'),
(53, 6, 'gol', '26', 'Robert Lewandowski'),
(53, 6, 'gol', '32', 'Lamine Yamal'),
(53, 1, 'gol - cabeza', '49', 'Oihan Sancet'),
(53, 1, 'gol', '105+2', 'Iñaki Williams'),
(53, 1, 'gol', '120+1', 'Nico Williams'),
(21, 20, 'gol', '41', 'Gerard Moreno'),
(21, 20, 'gol', '54', 'Ilias Akhomach'),
(21, 6, 'gol', '60', 'Ilkay Gündogan'),
(21, 6, 'gol', '68', 'Pedri'),
(21, 6, 'gol - en contra', '71', 'Eric Bailly'),
(21, 20, 'gol', '84', 'Goncalo Guedes'),
(21, 20, 'gol', '90+9', 'Alexander Sørloth'),
(21, 20, 'gol', '90+12', 'José Luis Morales'),
(22, 6, 'gol - cabeza', '63', 'Vitor Roque'),
(23, 6, 'gol', '22', 'Robert Lewandowski'),
(23, 6, 'gol - volea', '49', 'Ilkay Gündogan'),
(23, 9, 'gol - cabeza', '51', 'Samu'),
(23, 6, 'gol', '63', 'Vitor Roque'),
(24, 6, 'gol - volea', '14', 'Lamine Yamal'),
(24, 8, 'gol', '43', 'Ricard Sánchez'),
(24, 8, 'gol', '60', 'Facundo Pellistri'),
(24, 6, 'gol', '63', 'Robert Lewandowski'),
(24, 8, 'gol - cabeza', '66', 'Ignasi Miquel'),
(24, 6, 'gol', '80', 'Lamine Yamal'),
(45, 6, 'gol', '60', 'Robert Lewandowski'),
(45, 24, 'gol', '75', 'Victor Osimhen'),
(26, 6, 'gol', '20', 'Raphinha'),
(26, 6, 'gol', '53', 'João Félix'),
(26, 6, 'gol', '61', 'Frenkie de Jong'),
(26, 6, 'gol - volea', '90+1', 'Fermín López'),
(27, 6, 'gol', '73', 'Lamine Yamal'),
(46, 6, 'gol', '15', 'Fermín López'),
(46, 6, 'gol', '17', 'João Cancelo'),
(46, 24, 'gol', '30', 'Amir Rrahmani'),
(46, 6, 'gol', '83', 'Robert Lewandowski'),
(28, 6, 'gol', '38', 'João Félix'),
(28, 6, 'gol', '47', 'Robert Lewandowski'),
(28, 6, 'gol - cabeza', '65', 'Fermín López'),
(29, 6, 'gol - cabeza', '59', 'Raphinha'),
(47, 6, 'gol', '37', 'Raphinha'),
(47, 25, 'gol', '48', 'Ousmane Dembélé'),
(47, 25, 'gol', '50', 'Vitinha'),
(47, 6, 'gol - volea', '62', 'Raphinha'),
(47, 6, 'gol - cabeza', '77', 'Andreas Christensen'),
(34, 6, 'gol', 3, 'Andreas Christensen'),
(34, 8, 'gol - Cabeza', 4, 'Artem Dovik'),
(34, 6, 'gol - Penalty', 45+1, 'Robert Lewandowski'),
(31, 6, 'gol', 37, 'João Félix'),
(34, 8, 'gol', 65, 'Portu'),
(34, 8, 'gol', 66, 'Miguel Gutiérrez'),
(34, 8, 'gol', 75, 'Portu'),
(48, 6, 'gol', 12, 'Raphinha'),
(48, 25, 'gol', 40, 'Ousmane Dembélé'),
(48, 25, 'gol', 54, 'Vitinha'),
(48, 25, 'gol - penalty', 61, 'Kylian Mbappé'),
(48, 25, 'gol', 89, 'Kylian Mbappé'),
(32, 6, 'gol', 6, 'Andreas Christensen'),
(32, 6, 'gol', 69, 'Fermín López'),
(32, 14, 'gol - penalty', 18, 'Vinícius Jr.'),
(32, 14, 'gol', 73, 'Lucas Vázquez'),
(32, 14, 'gol', 90, 'Jude Bellingham'),
(33, 6, 'gol', 22, 'Fermín López'),
(33, 6, 'gol', 49, 'Robert Lewandowski'),
(33, 6, 'gol', 82, 'Robert Lewandowski'),
(33, 6, 'gol', 90+3, 'Robert Lewandowski'),
(33, 19, 'gol', 27, 'Hugo Duro'),
(33, 19, 'gol - penalty', 38, 'Pepelu');

INSERT INTO blog_posts (title, content, imagen_data1, imagen_data2, created_at, partido_id) VALUES
('Agrio sabor de boca para Xavi en el primer partido', 'El pasado domingo 13 de Agosto el conjunto de Xavi empató por 0 frente al Getafe, donde Raphiha es expulsado tras golpear con el codo al rival. Ambos equipos terminan el partido con 10 hombres y 0 goles.', 'https://ssl.gstatic.com/onebox/media/sports/videos/vita/umTsp46Cq74muFCM_768x432.jpg', NULL, '2024-04-22 04:02:53', 1),
('Pedri estrena la colección de goles de la temporada frente al Cadiz', 'Un Barcelona dominante ganó 2 por 0 frente al Cadiz, con la gran actuación de Pedri y un gol al último minuto de Ferrán Torres. Además logramos ver jugar al jóven Lamine Yamal como titular jugando hasta el cambió por el goleador Ferrán 🦈', 'https://img.asmedia.epimg.net/resizer/v2/HHLFJAUYSWP4AM6WLBVENBHGIE.jpg?auth=6a5783d973ce0e3f8e934a688e3f3507bc971a4bc1f6145f8c8f5ff9a884ea56&width=736&height=414&focal=1190%2C710', NULL, '2024-04-22 04:02:53', 2),
('Golazo de Lamine salva al Barcelona del empate', '"Lamine la mandó al ángulo salvando al Barcelona en el minuto 73\, logrando el 1-0 y salvando 2 puntos en casa.', 'https://pbs.twimg.com/media/GILlstWXIAAREnE?format=jpg&name=medium', NULL, '2024-04-22 04:02:53', 28),
('Lewandowski despierta en el tramo final de La Liga', '"Hack-Trick de Robert Lewandowski ""salva"" al Barcelona de los terribles errores de Ter Steguen y Ronald Araujo en el primer tiempo, donde el primero cedió un gol por un mal pase y el segundo cometió una falta que les costó un penalti para su 1-2. Además de Lewandowski, Fermín López fue otro que convirtió para el Barcelona"', 'https://ichef.bbci.co.uk/onesport/cps/976/cpsprodpb/14108/production/_133248128_robertlewandowski.jpg', NULL, '2024-04-30 19:13:52', 33),
('Una defensa desastrosa y el Madrid es campeón de La Liga', 'A 5 jornadas del final de la Liga, el Barcelona es goleado  en la visita al Girona', 'https://barcauniversal.com/wp-content/uploads/2024/05/fbl-esp-liga-girona-barcelona-6-2048x1365.jpg', NULL, '2024-05-04 21:10:41', 34);
