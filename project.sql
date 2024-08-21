CREATE DATABASE college;

USE college;

CREATE TABLE FantasyCreatureZoo (
    CreatureID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Species VARCHAR(100),
    Habitat VARCHAR(100),
    Abilities TEXT,
    Diet ENUM('Carnivore', 'Herbivore', 'Omnivore', 'Unknown') DEFAULT 'Unknown',
    DiscoveredDate DATE,
    IsLegendary BOOLEAN DEFAULT FALSE,
    LastSeen TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO FantasyCreatureZoo (Name, Species, Habitat, Abilities, Diet, DiscoveredDate, IsLegendary)
VALUES
('Fire Dragon', 'Dragon', 'Volcanic Mountains', 'Breathes fire, can fly', 'Carnivore', '2023-01-15', TRUE),
('Frost Giant', 'Giant', 'Frozen Tundra', 'Superhuman strength, ice manipulation', 'Omnivore', '2023-03-22', TRUE),
('Phoenix', 'Mythical Bird', 'Mystic Forest', 'Rebirth from ashes, flight', 'Carnivore', '2023-05-30', TRUE),
('Unicorn', 'Mythical Horse', 'Enchanted Meadow', 'Healing horn, enhanced speed', 'Herbivore', '2023-07-10', TRUE),
('Goblin', 'Goblin', 'Dark Caves', 'Stealthy, cunning', 'Omnivore', '2023-08-01', FALSE);

SELECT * FROM FantasyCreatureZoo;

SELECT Name, Diet FROM FantasyCreatureZoo WHERE CreatureID = 1;

TRUNCATE TABLE FantasyCreatureZoo;

SELECT * FROM FantasyCreatureZoo;

INSERT INTO FantasyCreatureZoo (Name, Species, Habitat, Abilities, Diet, DiscoveredDate, IsLegendary)
VALUES
('Fire Dragon', 'Dragon', 'Volcanic Mountains', 'Breathes fire, can fly', 'Carnivore', '2023-01-15', TRUE),
('Frost Giant', 'Giant', 'Frozen Tundra', 'Superhuman strength, ice manipulation', 'Omnivore', '2023-03-22', TRUE),
('Phoenix', 'Mythical Bird', 'Mystic Forest', 'Rebirth from ashes, flight', 'Carnivore', '2023-05-30', TRUE),
('Unicorn', 'Mythical Horse', 'Enchanted Meadow', 'Healing horn, enhanced speed', 'Herbivore', '2023-07-10', TRUE),
('Goblin', 'Goblin', 'Dark Caves', 'Stealthy, cunning', 'Omnivore', '2023-08-01', FALSE);

SELECT * FROM FantasyCreatureZoo;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM FantasyCreatureZoo WHERE Name = 'Goblin';

SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE FantasyCreatureZoo SET Diet = 'Herbivore' WHERE Name = 'Fire Dragon';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM FantasyCreatureZoo;

ALTER TABLE FantasyCreatureZoo RENAME COLUMN CreatureID TO ID;

SELECT * FROM FantasyCreatureZoo;

DROP TABLE FantasyCreatureZoo;
