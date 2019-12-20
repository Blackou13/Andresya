INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_security','Supreme Securite',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_security','Supreme Securite',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_security', 'Supreme Securite', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('security', 'Supreme Securite', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('security', 0, 'soldato', 'Stagiaire', 500, '{}', '{}'),
('security', 1, 'capo', 'Employé', 550, '{}', '{}'),
('security', 2, 'consigliere', 'Chef d equipe', 600, '{}', '{}'),
('security', 3, 'boss', 'PDG', 700, '{}', '{}');