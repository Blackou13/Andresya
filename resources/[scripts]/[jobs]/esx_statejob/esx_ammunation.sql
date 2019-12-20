USE `essentialmode` ;
INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_state','state',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_state','State',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_state', 'State', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('state', 'Mairie', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('state', 0, 'soldato', 'Stagiaire', 400, '{}', '{}'),
('state', 1, 'capo', 'Apprenti', 450, '{}', '{}'),
('state', 2, 'consigliere', 'Juge', 500, '{}', '{}'),
('state', 3, 'righthand', 'Secrétaire', 550, '{}', '{}'),
('state', 4, 'boss', 'Maire', 600, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}');
