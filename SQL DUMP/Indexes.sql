CREATE INDEX idx_p_n ON person(person_name);
EXPLAIN SELECT *
FROM person
USE INDEX (idx_p_n)
WHERE
    person_name LIKE 'A%';