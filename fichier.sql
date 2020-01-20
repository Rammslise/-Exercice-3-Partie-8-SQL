-- Exercice 3
-- Afficher le nombre de framework qu'a un langage.
SELECT `languages`.`name`, COUNT(`frameworks`.`languagesId`) AS `frameworkNumber`
FROM `frameworks`
INNER JOIN `languages`
ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`;

-- Correction, facçon numéro 2
SELECT `languages`.`name` AS `languageName`, COUNT(*) AS `frameworkNumber`
FROM `frameworks`
INNER JOIN `languages`
  ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`;

-- sur le ON , Clé primaire = gauche, clé étrangère = droite
