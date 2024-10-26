-- Insert new event information for Fluffy and Hammy
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
    ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Insert pet information for Hammy, ensuring it only occurs once in petPet
INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

-- Insert Fluffy's kittens with gender, assuming unnamed kittens, for demonstration purposes
INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ('Kitten1', 'OwnerFluffy', 'cat', 'M', '2020-10-15', NULL),
    ('Kitten2', 'OwnerFluffy', 'cat', 'M', '2020-10-15', NULL),
    ('Kitten3', 'OwnerFluffy', 'cat', 'F', '2020-10-15', NULL),
    ('Kitten4', 'OwnerFluffy', 'cat', 'F', '2020-10-15', NULL),
    ('Kitten5', 'OwnerFluffy', 'cat', 'F', '2020-10-15', NULL);

-- Insert event for Claws breaking a rib on 1997-08-03
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ('Claws', '1997-08-03', 'injury', 'broke rib');

-- Update Puffball's death date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Remove Harold’s dog from the database
DELETE FROM petPet WHERE owner = 'Harold' AND species = 'dog';
