-- How many female customers do we have from the state of Oregon (OR)?
SELECT
    COUNT(*)
FROM customers
WHERE state = 'OR' AND gender = 'F';

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
SELECT
    COUNT(*) 
FROM customers
WHERE age > 44 AND income >= 100000;

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT
    COUNT(*)
FROM customers
WHERE age BETWEEN 30 AND 50 AND income < 50000;

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
SELECT
  AVG(income)
FROM customers
WHERE age > 20 AND age < 50;
