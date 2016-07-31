-- Include your solutions to the More Practice problems in this file.



-- INSERT
INSERT INTO models (year, brand_name, name) VALUES (2015, 'Chevrolet', 'Malibu');
INSERT INTO models (year, brand_name, name) VALUES (2015, 'Subaru', 'Outback');

-- CREATE TABLE
CREATE TABLE awards(
id SERIAL PRIMARY KEY,
name VARCHAR(30) NOT NULL,
year INTEGER,
winner_id INTEGER NOT NULL);

-- More INSERT
INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 49);
INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 50);

cars=# INSERT INTO models (year, brand_name, name) VALUES (2015, 'Chevrolet', 'Malibu');
INSERT 0 1
cars=# select * FROM models;
cars=# INSERT INTO models (year, brand_name, name) VALUES (2015, 'Subaru', 'Outback');
INSERT 0 1
cars=# select * FROM models;
cars=# BEGIN;
BEGIN
cars=# CREATE TABLE awards(
cars(# id SERIAL PRIMARY KEY,
cars(# name VARCHAR(30) NOT NULL,
cars(# year INTEGER,
cars(# winner_id INTEGER NOT NULL);
CREATE TABLE
cars=# COMMIT;
COMMIT
cars=# \dt
         List of relations
 Schema |  Name  | Type  |  Owner
--------+--------+-------+---------
 public | awards | table | vagrant
 public | brands | table | vagrant
 public | models | table | vagrant
(3 rows)

cars=# \d awards
                                  Table "public.awards"
  Column   |         Type          |                      Modifiers
-----------+-----------------------+-----------------------------------------------------
 id        | integer               | not null default nextval('awards_id_seq'::regclass)
 name      | character varying(30) | not null
 year      | integer               |
 winner_id | integer               | not null
Indexes:
    "awards_pkey" PRIMARY KEY, btree (id)

cars=# BEGIN;
BEGIN
cars=# INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 49);
INSERT 0 1
cars=# INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 50);
INSERT 0 1
cars=# select * from awards;
 id |       name        | year | winner_id
----+-------------------+------+-----------
  1 | IIHS Safety Award | 2015 |        49
  2 | IIHS Safety Award | 2015 |        50
(2 rows)

cars=# COMMIT;
COMMIT
cars=# select * from awards;
 id |       name        | year | winner_id
----+-------------------+------+-----------
  1 | IIHS Safety Award | 2015 |        49
  2 | IIHS Safety Award | 2015 |        50
(2 rows)
