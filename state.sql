SET search_path = muliyear, census, public;

CREATE SCHEMA multiyear

CREATE TABLE multiyear.state (
     LIKE census.tl_2016_us_state
including defaults
including constraints
including indexes
)

INSERT INTO multiyear.state 
SELECT * FROM census.tl_2016_us_state

-- year range field 
ALTER TABLE multiyear.state
ADD COLUMN year int4range

UPDATE multiyear.state 
SET year = '[2007, 2016]'

CREATE OR REPLACE VIEW multiyear.year_2007 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2007,2007]'

CREATE OR REPLACE VIEW multiyear.year_2008 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2008,2008]'

CREATE OR REPLACE VIEW multiyear.year_2009 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2009,2009]'

CREATE OR REPLACE VIEW multiyear.year_2010 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2010,2010]'

CREATE OR REPLACE VIEW multiyear.year_2011 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2011,2011]'

CREATE OR REPLACE VIEW multiyear.year_2012 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2012,2012]'

CREATE OR REPLACE VIEW multiyear.year_2013 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2013,2013]'

CREATE OR REPLACE VIEW multiyear.year_2014 AS
SELECT *
FROM multiyear.state
WHERE year = '[2014,2014]'

CREATE OR REPLACE VIEW multiyear.year_2015 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2015,2015]'

CREATE OR REPLACE VIEW multiyear.year_2016 AS
SELECT *
FROM multiyear.state
WHERE year @> '[2016,2016]';
