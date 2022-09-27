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

CREATE TABLE medical_histories (
  id INT GENERATED ALWAYS AS IDENTITY,
  admited_at TIMESTAMP,
  patient_id INT REFERENCES patients(id),
  status VARCHAR(10),
  PRIMARY KEY(id)
);

CREATE TABLE invoices (
  id INT GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_histories_id INT REFERENCES medical_histories(id),
  PRIMARY KEY(id)
);
