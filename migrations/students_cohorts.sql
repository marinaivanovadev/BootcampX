CREATE TABLE cohorts (
  id serial primary key Not null,
  name VARCHAR(255) NOT null,
  start_date DATE,
  end_date DATE
);
CREATE TABLE students (
  id serial primary key Not null,
  name VARCHAR(255) NOT null,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);