BEGIN;

-- COUNTRY 
INSERT INTO country (name) VALUES ('Italie'), ('Colombie'), ('Éthiopie'), ('Brésil'), ('Guatemala'), ('Kenya'), ('Indonésie'), ('Costa Rica'), ('Vietnam'), ('Tanzanie'), ('Jamaïque'), ('Rwanda'), ('Panama'), ('Pérou'), ('Hawaï'), ('Nicaragua');

-- CHARATERISTICS
INSERT INTO characteristic (detail) VALUES ('Corsé'), ('Épicé'), ('Acide'), ('Doux'), ('Fruité'), ('Chocolaté');

-- COFFEES
INSERT INTO coffee (name, description, price, reference, available, country_id) VALUES 
    (-- Espresso
    'Espresso',
    'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.',
    20.99,
    100955890,
    true,
    (SELECT id FROM country WHERE name ='Italie')),

    (--Columbian
    'Columbian',
    'Café moyennement corsé avec une acidité vive et une saveur riche.',
    18.75,
    100955894,
    true,
    (SELECT id FROM country WHERE name ='Colombie')),

    (-- Ethiopian Yirgacheffe
    'Ethiopian Yirgacheffe',
    'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.',
    22.50,
    105589090,
    true,
    (SELECT id FROM country WHERE name ='Éthiopie')),

    (-- Brazilian Santos
    'Brazilian Santos',
    'Café doux et lisse avec un profil de saveur de noisette.',
    17.80,
    134009550,
    true,
    (SELECT id FROM country WHERE name ='Brésil'));

-- COFFEES_CHARACTERISTICS
INSERT INTO coffee_characteristic (coffee_id, characteristic_id) VALUES
    
    ((SELECT id FROM coffee WHERE name ='Espresso'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Espresso'),
    (SELECT id FROM characteristic WHERE detail='Épicé')),

    ((SELECT id FROM coffee WHERE name ='Columbian'),
    (SELECT id FROM characteristic WHERE detail='Acide')),

    ((SELECT id FROM coffee WHERE name ='Ethiopian Yirgacheffe'),
    (SELECT id FROM characteristic WHERE detail='Doux')),

    ((SELECT id FROM coffee WHERE name ='Ethiopian Yirgacheffe'),
    (SELECT id FROM characteristic WHERE detail='Fruité')),

    ((SELECT id FROM coffee WHERE name ='Brazilian Santos'),
    (SELECT id FROM characteristic WHERE detail='Doux'))
    ;

COMMIT;