# Modèle physique de données

```sql

DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS coffee;
DROP TABLE IF EXISTS characteristic;
DROP TABLE IF EXISTS coffee_characteristic;

CREATE TABLE IF NOT EXISTS country (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL,
);

CREATE TABLE IF NOT EXISTS coffee (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL NOT NULL,
    reference CHAR(9) NOT NULL UNIQUE,
    available BOOLEAN NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES (coutry),
);

CREATE TABLE IF NOT EXISTS characteristic (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    detail VARCHAR(30) NOT NULL,
);

CREATE TABLE IF NOT EXISTS coffe_characteristic (
    coffee_reference INT PRIMARY KEY NOT NULL,
    characteristic_id INT PRIMARY KEY NOT NULL,
    FOREIGN KEY (coffe_reference) REFERENCES (coffee),
    FOREIGN KEY (characteristic_id) REFERENCES (characteristic),
);

```