IF OBJECT_ID('dbo.vets', 'U') IS NULL
CREATE TABLE dbo.vets (
  id         INT IDENTITY(1,1) PRIMARY KEY,
  first_name NVARCHAR(255),
  last_name  NVARCHAR(255)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_vets_last_name' AND object_id = OBJECT_ID('dbo.vets'))
CREATE INDEX idx_vets_last_name ON dbo.vets (last_name);

IF OBJECT_ID('dbo.specialties', 'U') IS NULL
CREATE TABLE dbo.specialties (
  id   INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(255)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_specialties_name' AND object_id = OBJECT_ID('dbo.specialties'))
CREATE INDEX idx_specialties_name ON dbo.specialties (name);

IF OBJECT_ID('dbo.vet_specialties', 'U') IS NULL
CREATE TABLE dbo.vet_specialties (
  vet_id       INT NOT NULL REFERENCES dbo.vets (id),
  specialty_id INT NOT NULL REFERENCES dbo.specialties (id),
  UNIQUE (vet_id, specialty_id)
);

IF OBJECT_ID('dbo.types', 'U') IS NULL
CREATE TABLE dbo.types (
  id   INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(255)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_types_name' AND object_id = OBJECT_ID('dbo.types'))
CREATE INDEX idx_types_name ON dbo.types (name);

IF OBJECT_ID('dbo.owners', 'U') IS NULL
CREATE TABLE dbo.owners (
  id         INT IDENTITY(1,1) PRIMARY KEY,
  first_name NVARCHAR(255),
  last_name  NVARCHAR(255),
  address    NVARCHAR(255),
  city       NVARCHAR(255),
  telephone  NVARCHAR(20)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_owners_last_name' AND object_id = OBJECT_ID('dbo.owners'))
CREATE INDEX idx_owners_last_name ON dbo.owners (last_name);

IF OBJECT_ID('dbo.pets', 'U') IS NULL
CREATE TABLE dbo.pets (
  id         INT IDENTITY(1,1) PRIMARY KEY,
  name       NVARCHAR(255),
  birth_date DATE,
  type_id    INT NOT NULL REFERENCES dbo.types (id),
  owner_id   INT REFERENCES dbo.owners (id)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_pets_name' AND object_id = OBJECT_ID('dbo.pets'))
CREATE INDEX idx_pets_name ON dbo.pets (name);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_pets_owner_id' AND object_id = OBJECT_ID('dbo.pets'))
CREATE INDEX idx_pets_owner_id ON dbo.pets (owner_id);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'unique_owner_pet_name' AND object_id = OBJECT_ID('dbo.pets'))
CREATE UNIQUE INDEX unique_owner_pet_name ON dbo.pets (owner_id, name);

IF OBJECT_ID('dbo.visits', 'U') IS NULL
CREATE TABLE dbo.visits (
  id          INT IDENTITY(1,1) PRIMARY KEY,
  pet_id      INT REFERENCES dbo.pets (id),
  visit_date  DATE,
  description NVARCHAR(MAX)
);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'idx_visits_pet_id' AND object_id = OBJECT_ID('dbo.visits'))
CREATE INDEX idx_visits_pet_id ON dbo.visits (pet_id);