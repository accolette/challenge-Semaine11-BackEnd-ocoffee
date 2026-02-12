BEGIN;

DROP TABLE IF EXISTS country CASCADE;
DROP TABLE IF EXISTS coffee CASCADE;
DROP TABLE IF EXISTS characteristic CASCADE;
DROP TABLE IF EXISTS coffee_characteristic CASCADE;


CREATE TABLE IF NOT EXISTS country (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS coffee (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL NOT NULL,
    reference CHAR(9) NOT NULL UNIQUE,
    available BOOLEAN NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE IF NOT EXISTS characteristic (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    detail VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS coffee_characteristic (
    coffee_id INT NOT NULL,
    characteristic_id INT NOT NULL,
    PRIMARY KEY (coffee_id, characteristic_id),
    FOREIGN KEY (coffee_id) REFERENCES coffee(id),
    FOREIGN KEY (characteristic_id) REFERENCES characteristic(id)
);

COMMIT;