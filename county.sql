SET search_path = multiyear, census, public;

CREATE TABLE multiyear.county (
LIKE census.tl_2016_us_county
including defaults
including constraints
including indexes
)

INSERT INTO multiyear.county
SELECT * FROM census.tl_2016_us_county

ALTER TABLE multiyear.county
ADD COLUMN year int4range

UPDATE multiyear.county 
SET year = '[2008, 2016]'

 CREATE OR REPLACE VIEW county2008 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2008,2008]'

CREATE OR REPLACE VIEW county2009 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2009,2009]'

CREATE OR REPLACE VIEW county2010 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2010,2010]'

CREATE OR REPLACE VIEW county2011 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2011,2011]'

CREATE OR REPLACE VIEW county2012 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2012,2012]'

CREATE OR REPLACE VIEW county2013 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2013,2013]'

CREATE OR REPLACE VIEW county2014 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2014,2014]'

CREATE OR REPLACE VIEW county2015 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2015,2015]'

CREATE OR REPLACE VIEW county2016 AS
SELECT *
FROM multiyear.county
WHERE year @> '[2016,2016]';