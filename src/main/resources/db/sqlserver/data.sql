IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=1) INSERT INTO dbo.vets (first_name, last_name) VALUES ('James', 'Carter');
IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=2) INSERT INTO dbo.vets (first_name, last_name) VALUES ('Helen', 'Leary');
IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=3) INSERT INTO dbo.vets (first_name, last_name) VALUES ('Linda', 'Douglas');
IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=4) INSERT INTO dbo.vets (first_name, last_name) VALUES ('Rafael', 'Ortega');
IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=5) INSERT INTO dbo.vets (first_name, last_name) VALUES ('Henry', 'Stevens');
IF NOT EXISTS (SELECT 1 FROM dbo.vets WHERE id=6) INSERT INTO dbo.vets (first_name, last_name) VALUES ('Sharon', 'Jenkins');

IF NOT EXISTS (SELECT 1 FROM dbo.specialties WHERE name='radiology') INSERT INTO dbo.specialties (name) VALUES ('radiology');
IF NOT EXISTS (SELECT 1 FROM dbo.specialties WHERE name='surgery') INSERT INTO dbo.specialties (name) VALUES ('surgery');
IF NOT EXISTS (SELECT 1 FROM dbo.specialties WHERE name='dentistry') INSERT INTO dbo.specialties (name) VALUES ('dentistry');

IF NOT EXISTS (SELECT 1 FROM dbo.vet_specialties WHERE vet_id=2 AND specialty_id=1) INSERT INTO dbo.vet_specialties (vet_id, specialty_id) VALUES (2, 1);
IF NOT EXISTS (SELECT 1 FROM dbo.vet_specialties WHERE vet_id=3 AND specialty_id=2) INSERT INTO dbo.vet_specialties (vet_id, specialty_id) VALUES (3, 2);
IF NOT EXISTS (SELECT 1 FROM dbo.vet_specialties WHERE vet_id=3 AND specialty_id=3) INSERT INTO dbo.vet_specialties (vet_id, specialty_id) VALUES (3, 3);
IF NOT EXISTS (SELECT 1 FROM dbo.vet_specialties WHERE vet_id=4 AND specialty_id=2) INSERT INTO dbo.vet_specialties (vet_id, specialty_id) VALUES (4, 2);
IF NOT EXISTS (SELECT 1 FROM dbo.vet_specialties WHERE vet_id=5 AND specialty_id=1) INSERT INTO dbo.vet_specialties (vet_id, specialty_id) VALUES (5, 1);

IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='cat') INSERT INTO dbo.types (name) VALUES ('cat');
IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='dog') INSERT INTO dbo.types (name) VALUES ('dog');
IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='lizard') INSERT INTO dbo.types (name) VALUES ('lizard');
IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='snake') INSERT INTO dbo.types (name) VALUES ('snake');
IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='bird') INSERT INTO dbo.types (name) VALUES ('bird');
IF NOT EXISTS (SELECT 1 FROM dbo.types WHERE name='hamster') INSERT INTO dbo.types (name) VALUES ('hamster');

IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=1) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=2) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=3) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=4) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=5) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=6) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=7) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=8) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=9) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435');
IF NOT EXISTS (SELECT 1 FROM dbo.owners WHERE id=10) INSERT INTO dbo.owners (first_name, last_name, address, city, telephone) VALUES ('Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');

IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=1) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Leo', '2000-09-07', 1, 1);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=2) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Basil', '2002-08-06', 6, 2);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=3) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Rosy', '2001-04-17', 2, 3);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=4) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Jewel', '2000-03-07', 2, 3);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=5) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Iggy', '2000-11-30', 3, 4);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=6) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('George', '2000-01-20', 4, 5);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=7) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Samantha', '1995-09-04', 1, 6);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=8) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Max', '1995-09-04', 1, 6);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=9) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Lucky', '1999-08-06', 5, 7);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=10) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Mulligan', '1997-02-24', 2, 8);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=11) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Freddy', '2000-03-09', 5, 9);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=12) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Lucky', '2000-06-24', 2, 10);
IF NOT EXISTS (SELECT 1 FROM dbo.pets WHERE id=13) INSERT INTO dbo.pets (name, birth_date, type_id, owner_id) VALUES ('Sly', '2002-06-08', 1, 10);

IF NOT EXISTS (SELECT 1 FROM dbo.visits WHERE id=1) INSERT INTO dbo.visits (pet_id, visit_date, description) VALUES (7, '2010-03-04', 'rabies shot');
IF NOT EXISTS (SELECT 1 FROM dbo.visits WHERE id=2) INSERT INTO dbo.visits (pet_id, visit_date, description) VALUES (8, '2011-03-04', 'rabies shot');
IF NOT EXISTS (SELECT 1 FROM dbo.visits WHERE id=3) INSERT INTO dbo.visits (pet_id, visit_date, description) VALUES (8, '2009-06-04', 'neutered');
IF NOT EXISTS (SELECT 1 FROM dbo.visits WHERE id=4) INSERT INTO dbo.visits (pet_id, visit_date, description) VALUES (7, '2008-09-04', 'spayed');