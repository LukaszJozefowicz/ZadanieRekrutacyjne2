CREATE DATABASE "Pracownicy_z_dziecmi"
  WITH
  OWNER = postgres
  ENCODING = 'UTF8'
  LC_COLLATE = 'Polish_Poland.1250'
  LC_CTYPE = 'Polish_Poland.1250'
  TABLESPACE = pg_default
  CONNECTION LIMIT = -1;

GRANT ALL ON DATABASE "Pracownicy_z_dziecmi" TO postgres;

GRANT TEMPORARY, CONNECT ON DATABASE "Pracownicy_z_dziecmi" TO PUBLIC;