/* Database schema to keep the structure of entire database. */

CREATE TABLE patients (
  id int GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(200),
  date_of_birth DATE,
  PRIMARY KEY(id)
);

CREATE TABLE treatments (
  id INT GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(20),
  name VARCHAR(100),
  PRIMARY KEY(id)
);

