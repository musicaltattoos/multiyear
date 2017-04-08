SET search_path = muliyear, census, public;

CREATE TABLE multiyear.censustract (
LIKE census.tl_2016_01_tract
including defaults
including constraints
including indexes
)

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_01_tract

ALTER TABLE multiyear.censustract
ADD COLUMN YEAR int4range

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_02_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_04_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_04_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_05_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_06_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_08_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_09_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_10_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_11_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_12_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_13_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_15_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_16_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_17_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_18_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_19_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_20_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_21_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_22_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_23_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_24_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_25_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_26_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_27_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_28_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_29_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_30_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_31_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_32_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_33_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_34_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_35_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_36_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_37_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_38_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_39_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_40_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_41_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_42_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_44_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_45_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_46_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_47_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_48_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_49_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_50_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_51_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_53_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_54_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_55_tract

INSERT INTO multiyear.censustract
SELECT * FROM census.tl_2016_56_tract

UPDATE multiyear.censustract
SET year = '[2010,2016]'

INSERT INTO multiyear.censustract
SELECT * 
FROM census.tl_2011_04_tract
WHERE countyfp = '019' AND name = '27.01'

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'29.03'

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'4105.01'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'4105.02'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'4105.03'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'4704'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2011_04_tract	WHERE	countyfp = '019'	AND	name = 	'4705'	

UPDATE	multiyear.censustract		SET	year = 	'[2010,2011]'	WHERE 	year IS	NULL 

--not necessary, checking to see if things were running smoothly
SELECT *	FROM	multiyear.censustract	WHERE	countyfp = '019' AND name = '4704'

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9401.01'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9401.02'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9401.03'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9402'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9403'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9404.01'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9404.03'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9406'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '053'	AND	name10 = 	'9407'	

-- not necessary, just checking if things were running smoothly
SELECT *	FROM multiyear.censustract WHERE	countyfp = '053' AND name = '9407'

UPDATE	multiyear.censustract		SET	year = 	'[2010,2010]'	WHERE 	year IS	NULL 	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '065'	AND	name10 = 	'9400'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '065'	AND	name10 = 	'9401'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '065'	AND	name10 = 	'9402'	

INSERT INTO	multiyear.censustract	SELECT *	FROM	census.tl_2010_36_tract10	WHERE	countyfp10 = '065'	AND	name10 = 	'230'	

UPDATE	multiyear.censustract		SET	year = 	'[2010,2010]'	WHERE 	year IS	NULL 	

CREATE OR REPLACE VIEW multiyear.tract2010 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2010,2010]'

CREATE OR REPLACE VIEW multiyear.tract2011 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2011,2011]'

CREATE OR REPLACE VIEW multiyear.tract2012 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2012,2012]'

CREATE OR REPLACE VIEW multiyear.tract2013 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2013,2013]'

CREATE OR REPLACE VIEW multiyear.tract2014 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2014,2014]'

CREATE OR REPLACE VIEW multiyear.tract2015 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2015,2015]'

CREATE OR REPLACE VIEW multiyear.tract2016 AS
SELECT *
FROM multiyear.censustract
WHERE year @> '[2016,2016]';