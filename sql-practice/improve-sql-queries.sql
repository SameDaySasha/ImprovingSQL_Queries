----------
-- Step 0 - Create a Query 
----------
-- Query: Select all cats that have a toy with an id of 5
-- SELECT cats.name FROM cats join cat_toys ON cats.id = cat_toys.cat_id
-- join toys on toys.id = cat_toys.toy_id WHERE toys.id = 5
-- Paste your results below (as a comment):

-- Rachele, Rodger, Jamal


----------
-- Step 1 - Analyze the Query
----------
-- Query:

--  EXPLAIN QUERY PLAN SELECT cats.name FROM cats join cat_toys ON cats.id = cat_toys.cat_id
-- join toys on toys.id = cat_toys.toy_id WHERE toys.id = 5

-- Paste your results below (as a comment):


-- What do your results mean?

    -- Was this a SEARCH or SCAN?


    -- What does that mean?




----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):
CREATE UNIQUE INDEX cat_toys_idx ON cat_toys(cat_id, toy_id);

.timer on 
EXPLAIN QUERY PLAN
SELECT cats.name
FROM cat_toys
JOIN cats ON cats.id = cat_toys.cat_id
JOIN toys ON toys.id = cat_toys.toy_id
WHERE toys.id = 5;

-- EXPLAIN QUERY PLAN SELECT cats.name FROM cats join cat_toys ON cats.id = cat_toys.cat_id
-- join toys on toys.id = cat_toys.toy_id WHERE toys.id = 5;
.timer off

-- Paste your results below (as a comment):




----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:



-- Analyze Query:
    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?




----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------