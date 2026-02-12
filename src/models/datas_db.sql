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
    '100955890',
    true,
    (SELECT id FROM country WHERE name ='Italie')),

    (--Columbian
    'Columbian',
    'Café moyennement corsé avec une acidité vive et une saveur riche.',
    18.75,
    '100955894',
    true,
    (SELECT id FROM country WHERE name ='Colombie')),

    (-- Ethiopian Yirgacheffe
    'Ethiopian Yirgacheffe',
    'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.',
    22.50,
    '105589090',
    true,
    (SELECT id FROM country WHERE name ='Éthiopie')),

    (-- Brazilian Santos
    'Brazilian Santos',
    'Café doux et lisse avec un profil de saveur de noisette.',
    17.80,
    '134009550',
    true,
    (SELECT id FROM country WHERE name ='Brésil')),

    (-- Guatemalan Antigua
    'Guatemalan Antigua',
    'Café corsé avec des nuances chocolatées et une pointe d''épice.',
    21.25,
    '256505890',
    true,
    (SELECT id FROM country WHERE name ='Guatemala')),

    (-- Kenyan AA
    'Kenyan AA',
    'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.',
    23.70,
    '295432730',
    true,
    (SELECT id FROM country WHERE name ='Kenya')),

    (-- Sumatra Mandheling
    'Sumatra Mandheling',
    'Café profond et terreux avec un corps lourd et une faible acidité.',
    19.95,
    '302932754',
    true,
    (SELECT id FROM country WHERE name ='Indonésie')),

    (-- Costa Rican Tarrazu
    'Costa Rican Tarrazu',
    'Café vif et net avec une finition propre et une acidité vive.',
    24.50,
    '327302954',
    true,
    (SELECT id FROM country WHERE name ='Costa Rica')),

    (-- Vietnamese Robusta
    'Vietnamese Robusta',
    'Café audacieux et fort avec une saveur robuste distinctive.',
    16.75,
    '549549090',
    true,
    (SELECT id FROM country WHERE name ='Vietnam')),

    (-- Tanzanian Peaberry
    'Tanzanian Peaberry',
    'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.',
    26.80,
    '582954954',
    true,
    (SELECT id FROM country WHERE name ='Tanzanie')),

    (-- Jamaican Blue Mountain
    'Jamaican Blue Mountain',
    'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.',
    39.25,
    '589100954',
    true,
    (SELECT id FROM country WHERE name ='Jamaïque')),

    (-- Rwandan Bourbon
    'Rwandan Bourbon',
    'Café avec des notes florales prononcées, une acidité vive et un corps moyen.',
    21.90,
    '650753915',
    true,
    (SELECT id FROM country WHERE name ='Rwanda')),

    (-- Panamanian Geisha
    'Panamanian Geisha',
    'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.',
    42.00,
    '795501340',
    true,
    (SELECT id FROM country WHERE name ='Panama')),

    (-- Peruvian Arabica
    'Peruvian Arabica',
    'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.',
    19.40,
    '954589100',
    false,
    (SELECT id FROM country WHERE name ='Pérou')),

    (-- Hawaiian Kona
    'Hawaiian Kona',
    'Café rare au goût riche, une acidité douce et des nuances subtiles.',
    55.75,
    '958090105',
    false,
    (SELECT id FROM country WHERE name ='Hawaï')),

    (-- Nicaraguan Maragogipe
    'Nicaraguan Maragogipe',
    'Café avec des notes de fruits, une acidité vive et un corps plein.',
    28.60,
    '691550753',
    false,
    (SELECT id FROM country WHERE name ='Nicaragua'));

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
    (SELECT id FROM characteristic WHERE detail='Doux')),

    ((SELECT id FROM coffee WHERE name ='Guatemalan Antigua'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Kenyan AA'),
    (SELECT id FROM characteristic WHERE detail='Doux')),

    ((SELECT id FROM coffee WHERE name ='Kenyan AA'),
    (SELECT id FROM characteristic WHERE detail='Acide')),

    ((SELECT id FROM coffee WHERE name ='Sumatra Mandheling'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Costa Rican Tarrazu'),
    (SELECT id FROM characteristic WHERE detail='Acide')),

    ((SELECT id FROM coffee WHERE name ='Vietnamese Robusta'),
    (SELECT id FROM characteristic WHERE detail='Épicé')),

    ((SELECT id FROM coffee WHERE name ='Tanzanian Peaberry'),
    (SELECT id FROM characteristic WHERE detail='Fruité')),

    ((SELECT id FROM coffee WHERE name ='Tanzanian Peaberry'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Jamaican Blue Mountain'),
    (SELECT id FROM characteristic WHERE detail='Doux')),

    ((SELECT id FROM coffee WHERE name ='Rwandan Bourbon'),
    (SELECT id FROM characteristic WHERE detail='Fruité')),

    ((SELECT id FROM coffee WHERE name ='Panamanian Geisha'),
    (SELECT id FROM characteristic WHERE detail='Fruité')),

    ((SELECT id FROM coffee WHERE name ='Peruvian Arabica'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Peruvian Arabica'),
    (SELECT id FROM characteristic WHERE detail='Chocolaté')),

    ((SELECT id FROM coffee WHERE name ='Hawaiian Kona'),
    (SELECT id FROM characteristic WHERE detail='Doux')),

    ((SELECT id FROM coffee WHERE name ='Nicaraguan Maragogipe'),
    (SELECT id FROM characteristic WHERE detail='Corsé')),

    ((SELECT id FROM coffee WHERE name ='Nicaraguan Maragogipe'),
    (SELECT id FROM characteristic WHERE detail='Fruité'))
    ;

COMMIT;
