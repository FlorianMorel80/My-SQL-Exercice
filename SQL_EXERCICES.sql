DROP DATABASE `webDevelopment`;
CREATE DATABASE `webDevelopment`;

DROP DATABASE `codex`;

-- ----------------------------------PARTIE 2 - CREATION DES TABLES --------------------------


-- Exercice 1 
-- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- language (type VARCHAR)

-- Pour accéder à la table webDevelopment


USE webDevelopment 
CREATE TABLE IF NOT EXISTS `languages` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `language` VARCHAR(40));

-- Exercice 2 
-- Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
--    id (type INT, auto-incrémenté, clé primaire)
--    tool (type VARCHAR)

CREATE TABLE IF NOT EXISTS `tools` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `tool` VARCHAR(40));


-- Exercice 3 
-- Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :

--    id (type INT, auto-incrémenté, clé primaire)
--    name (type VARCHAR)

CREATE TABLE IF NOT EXISTS `frameworks` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `name` VARCHAR(40));


-- Exercice 4 
-- Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
--    id (type INT, auto-incrémenté, clé primaire)
--    library (type VARCHAR)
CREATE TABLE IF NOT EXISTS `libraries` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `library` VARCHAR(40));


-- Exercice 5
-- Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
--     id (type INT, auto-incrémenté, clé primaire)
--     ideName (type VARCHAR)

CREATE TABLE IF NOT EXISTS `ide` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `ideName` VARCHAR(40));


-- Exercice 6
-- Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
--     id (type INT, auto-incrémenté, clé primaire)
--     name (type VARCHAR)

CREATE TABLE IF NOT EXISTS `frameworks` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `name` VARCHAR(40));

-- Exercice 7
-- Supprimer la table tools si elle existe.

DROP TABLE `tools`;

-- Exercice 8
-- Supprimer la table libraries.

DROP TABLE `libraries`;

-- Exercice 9
-- Supprimer la table ide.

DROP TABLE `ide`;



-- TP
-- Créer la base codex. Y créer une table clients qui aura comme colonnes :

    -- Colonne 	Type 	Attributs
    -- id
    -- 	INT 	Auto-incrémenté, clé primaire
    -- lastname 	VARCHAR 	
    -- firstname 	VARCHAR 	
    -- birthDate 	DATE 	
    -- address 	VARCHAR 	
    -- firstPhoneNumber 	INT 	
    -- secondPhoneNumber 	INT 	
    -- mail 	VARCHAR 	

CREATE DATABASE IF NOT EXISTS `codex`;
USE `codex`;

CREATE TABLE IF NOT EXISTS `clients` (
    `id` INT AUTO_INCREMENT, PRIMARY KEY(id),
    `lastname` VARCHAR(40),
    `firstname` VARCHAR(40),
    `birthDate` DATETIME,
    `address` VARCHAR (80),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(40));
-------------------------------------- END OF PARTIE 2 ------------------------------

------------------------------- PARTIE 3 - MODIFICATION DES TABLES-------------------

-- Exercice 1
-- Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
USE `webDevelopment`;
ALTER TABLE `languages`
    ADD COLUMN `versions` VARCHAR(100);

-- Exercice 2
-- Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE `frameworks`
    ADD COLUMN `version` INT;

-- Exercice 3
-- Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE `languages`
    CHANGE COLUMN `versions` `version` VARCHAR(100);

-- Exercice 4
-- Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE `frameworks`
    CHANGE `name` `framework` VARCHAR(40);

-- Exercice 5
-- Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE `frameworks`
    MODIFY `version` VARCHAR(20);
    -- OU 
    -- CHANGE `version` `version` VARCHAR(10);


-- TP 
-- Dans la base codex, dans la table clients :

--     supprimer la colonne secondPhoneNumber
--     renommer la colonne firstPhoneNumber en phoneNumberVARCHAR(40);
--     changer le type de la colonne phoneNumber en VARCHAR
--     ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)

USE CODEX;
ALTER TABLE `clients` 
    DROP COLUMN `secondPhoneNumber`,
    CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(15),
    ADD `zipCode` VARCHAR(7),
    ADD `city` VARCHAR(15);

-------------------------------------- END OF PARTIE 3 ------------------------------

------------------------------- PARTIE 4 - INSERTION DES DONNEES---------------------
-- Exercice 1
-- Insérez les données suivantes dans la table languages de la base webDevelopment :

--     JavaScript, version 5
--     PHP, version 5.2
--     PHP, version 5.4
--     HTML, version 5.1
--     JavaScript, version 6
--     JavaScript, version 7
--     JavaScript, version 8
--     PHP, version 7


USE webDevelopment;
INSERT INTO `languages` (`language`, `version`) 
VALUES 
    ('JavaScript', 'version 5'),
    ('PHP', 'version 5.2'),
    ('PHP', 'version 5.4'),
    ('HTML', 'version 5.1'),
    ('JavaScript', 'version 6'),
    ('JavaScript', 'version 7'),
    ('JavaScript', 'version 8'),
    ('PHP', 'version 7');


-- Exercice 2
-- Insérez les données suivantes dans la table frameworks de la base webDevelopment :

--     Symfony, version 2.8
--     Symfony, version 3
--     Jquery, version 1.6
--     Jquery, version 2.10


INSERT INTO `frameworks` (`framework`, `version`) 
VALUES 
    ('Symfony', 'version 2.8'),
    ('Symfony', 'version 3'),
    ('Jquery', 'version 1.6'),
    ('Jquery', 'version 2.10');
        
-------------------------------------- END OF PARTIE 4 ----------------------------------


-------------------------------- Partie 5 : Sélection de données ------------------------
-- Exercice 1 
-- Dans la table languages, afficher toutes les données de la table.
    SELECT * FROM `languages`;

-- Exercice 2 
-- Dans la table languages, afficher toutes les versions de PHP.
    SELECT `version` FROM `languages` WHERE `language` = 'PHP';

-- Exercice 3 
-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
    SELECT `version` FROM `languages` WHERE `language` = 'PHP' OR `language` = 'JavaScript' ;

-- Exercice 4 
-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
    SELECT * FROM `languages` WHERE `id` = '3' OR `id` = '5' OR `id` = '7'; 

-- Exercice 5 
-- Dans la table languages, afficher les deux première entrées de JavaScript.
    SELECT 'JavaScript' FROM `languages` LIMIT 2;

-- Exercice 6 
-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
    SELECT * FROM `languages` WHERE `language` != 'PHP';
-- Exercice 7 
-- Dans la table languages, afficher toutes les données par ordre alphabétique.
    SELECT * FROM `languages` ORDER BY `language` ASC;
-------------------------------------- END OF PARTIE 5  ----------------------------------



---------------Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE
-- Exercice 1
-- Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
    SELECT * FROM `frameworks` WHERE `version` >= '2.' OR `version` <= '2.9';

-- Exercice 2
-- Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
    SELECT * FROM `frameworks` WHERE `id` = '1' OR `id` = '3';

-- Exercice 3
-- Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.

-------------------------------------- END OF PARTIE 6  ----------------------------------



-------------------------------- Partie 7 : Suppression et modification de données------------
-- Exercice 1
-- Dans la table languages, supprimer toutes les lignes parlant de HTML.

-- Exercice 2
-- Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.

-- Exercice 3
-- Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.

-------------------------------------- END OF PARTIE 7  ----------------------------------



----------------------------------- Partie 8 : Les jointures ---------------------------------

-- Exercice 1
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.

-- Exercice 2
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.

-- Exercice 3
-- Afficher le nombre de framework qu'a un langage.

-- Exercice 4
-- Afficher les langages ayant plus de 3 frameworks.

-------------------------------------- END OF PARTIE 8  ----------------------------------